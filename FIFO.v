
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FIFO is
    Port ( 
           B : in STD_LOGIC;
           C : out STD_LOGIC;
           D : out STD_LOGIC_VECTOR (3 downto 0);
           E : in STD_LOGIC;
           F : out STD_LOGIC;
           G : in STD_LOGIC_VECTOR (3 downto 0);
           H : in STD_LOGIC);
end FIFO;

architecture Behavioral of FIFO is
COMPONENT design_1 is 
port (
       clk:in STD_LOGIC;
       read_empty:  out STD_LOGIC;  
       read_data:  out STD_LOGIC_VECTOR (3 downto 0);
       read_enable:  in STD_LOGIC;
       write_full : out STD_LOGIC;
       write_data:   in STD_LOGIC_VECTOR (3 downto 0);
       write_enable:  in STD_LOGIC 
       );
       end component design_1;
begin
design: design_1 port map( 
                           clk=>B,
                           read_empty =>C,
                           read_data(3 downto 0) => D(3 downto 0),
                           read_enable=> E,
                           write_full=>  F,
                           write_data(3 downto 0)=> G(3 downto 0),
                           write_enable=>H
);
end Behavioral;

