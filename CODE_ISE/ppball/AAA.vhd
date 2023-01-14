--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:21:58 11/30/2022
-- Design Name:   
-- Module Name:   D:/school_3/ppball/AAA.vhd
-- Project Name:  ppball
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: minfo
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
 
ENTITY AAA IS
END AAA;
 
ARCHITECTURE behavior OF AAA IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT minfo
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         clk4 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal clk4 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
   constant clk4_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: minfo PORT MAP (
          clk => clk,
          rst => rst,
          clk4 => clk4
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
   clk4_process :process
   begin
		clk4 <= '0';
		wait for clk4_period/2;
		clk4 <= '1';
		wait for clk4_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
