--FIR_simple
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity FIR is
  Port ( clk : in std_logic;
         rst : in std_logic;
         valid_in : in std_logic;
         en_ram_rom: in std_logic;
         x : in std_logic_vector(7 downto 0);
         valid_out : out std_logic;
         y_final : out std_logic_vector (18 downto 0);
         rom_out,ram_out:out STD_LOGIC_VECTOR (7 downto 0);
         rom_add,ram_add,counter_control:out STD_LOGIC_VECTOR (2 downto 0);
         mac_init : out std_logic;
         we_out:out std_logic 
         ); 
end FIR;

architecture Behavioral of FIR is
    --comp1
    component mlab_rom is
	 generic (
		coeff_width : integer :=8  				--- width of coefficients (bits)
	 );
    Port ( clk : in  STD_LOGIC;
		   en : in  STD_LOGIC;				--- operation enable
           addr : in  STD_LOGIC_VECTOR (2 downto 0);			-- memory address
           rom_out : out  STD_LOGIC_VECTOR (coeff_width-1 downto 0));	-- output data
    end component;
    
    --comp2
    component mlab_ram is
         generic (
            data_width : integer :=8                  --- width of data (bits)
         );
        port (clk  : in std_logic;
              rst  : in std_logic;
              we   : in std_logic;                        --- memory write enable
              en   : in std_logic;                --- operation enable
              addr : in std_logic_vector(2 downto 0);            -- memory address
              di   : in std_logic_vector(data_width-1 downto 0);        -- input data
              do   : out std_logic_vector(data_width-1 downto 0));        -- output data
    end component;
    
    --comp3
    component Control_Unit is
        Port ( clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               valid_in : in STD_logic;
               mac_init: out STD_LOGIC;
               ram_addr : out STD_LOGIC_VECTOR (2 downto 0);
               rom_addr : out STD_LOGIC_VECTOR (2 downto 0);
               we: out STD_LOGIC; --to we twn RAM/ROM
               counter: out STD_LOGIC_VECTOR (2 downto 0);
               valid_out: out STD_LOGIC
               );
    end component;
    
    --comp4
    component MAC is
        Port ( clk : in STD_LOGIC;
               rst : in STD_LOGIC;  
               rom_out : in STD_LOGIC_VECTOR (7 downto 0);
               ram_out : in STD_LOGIC_VECTOR (7 downto 0);
               mac_init : in STD_LOGIC;
--               valid_out: in STD_LOGIC;
               y : out STD_LOGIC_VECTOR (18 downto 0));
    end component;   
     
    --comp5
    component dff is
     port(
          d : in  std_logic;
          q : out  std_logic;
          clk : in std_logic;
          rst : in std_logic
         );
    end component;
    
    --comp6
    component dff_big is
        Port ( d : in STD_LOGIC_VECTOR (7 downto 0);
               clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               q : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    --comp7
    component dff2 is
        port(
            d : in  std_logic;
            q : out  std_logic;
            clk : in std_logic;
            rst : in std_logic
           );
    end component;
    
    signal x_dff,ram_out_temp,rom_out_temp : std_logic_vector(7 downto 0);
    signal ram_addr_temp, rom_addr_temp,counter_temp: std_logic_vector(2 downto 0);
    signal mac_init_temp, we_temp,valid_out_temp,mac_init_dff,valid_out_dff: std_logic;
    begin
    x_reg: dff_big port map(d=>x, clk=>clk, rst=>rst, q=>x_dff);
    control: Control_Unit port map(clk=>clk, rst=>rst, valid_in=>valid_in, mac_init=>mac_init_temp, ram_addr=>ram_addr_temp, rom_addr=>rom_addr_temp,we=>we_temp,valid_out=>valid_out_temp,counter=>counter_temp);
--    control: Control_Unit port map(clk=>clk, rst=>rst,  mac_init=>mac_init_temp, ram_addr=>ram_addr_temp, rom_addr=>rom_addr_temp,we=>we_temp);
    mac_init_reg : dff port map(d=>mac_init_temp, clk=>clk, rst=>rst, q=>mac_init_dff);
    valid_out_reg : dff2 port map(d=>valid_out_temp, clk=>clk, rst=>rst, q=>valid_out_dff);
    rom: mlab_rom port map(clk=>clk,en=>en_ram_rom, addr=>rom_addr_temp,rom_out=>rom_out_temp);
    ram: mlab_ram port map(clk=>clk, rst=>rst, en=>en_ram_rom, we=>we_temp ,addr=>ram_addr_temp,di=>x_dff, do=>ram_out_temp);
    macc: MAC port map(rst=>rst,clk=>clk, rom_out=>rom_out_temp, ram_out=>ram_out_temp, mac_init=>mac_init_dff, y=>y_final); 
   
    --just for simulation 
   --RAM_IN <= x_dff;
   mac_init <=mac_init_dff;
   we_out <= we_temp;
   ram_out <=ram_out_temp;
   rom_out <=rom_out_temp;  
   rom_add <=rom_addr_temp;
   ram_add <=ram_addr_temp;
   counter_control <= counter_temp;
   valid_out <=valid_out_dff;
   end Behavioral;