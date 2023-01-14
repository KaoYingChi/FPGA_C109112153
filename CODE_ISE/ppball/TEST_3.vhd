--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:03:10 10/20/2022
-- Design Name:   
-- Module Name:   C:/Users/USER/Desktop/test 2/test/school_3/ppball/TEST_3.vhd
-- Project Name:  ppball
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ppl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TEST_3 IS
END TEST_3;
 
ARCHITECTURE behavior OF TEST_3 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ppl
    PORT(
         CLK : IN  std_logic;
         rst : IN  std_logic;
         light_led : OUT  std_logic_vector(7 downto 0) := "10000000"
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal light_led : std_logic_vector(7 downto 0):= (others => '0');

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ppl PORT MAP (
          CLK => CLK,
          rst => rst,
          light_led => light_led
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		rst <= '1';
      wait for 100 ns;	
      rst <= '0';
 

      -- insert stimulus here 

      wait;
   end process;

END;
