library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity minfo is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk4 : out STD_LOGIC);
end minfo;

architecture Behavioral of minfo is
	signal counte : integer range 0 to 3;
   

begin

cnt : process (clk,rst) -- °£¨ì1HZ
      begin
		   if rst = '1' then
			   counte <= 0;
				clk4 <= '0';
		   elsif CLK'EVENT AND CLK='1' then
			   counte <= counte + 1;
				if counte = 3 then
				   counte <= 0;
				end if;
				if counte > 1 then
				   clk4 <= '1';
				else
				   clk4 <= '0';
				end if;
			end if;
      end process;


end Behavioral;
