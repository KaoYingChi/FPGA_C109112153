--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:47:14 12/03/2022
-- Design Name:   
-- Module Name:   E:/school_3/ppball/taaa.vhd
-- Project Name:  ppball
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vgatest
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
 
ENTITY taaa IS
END taaa;
 
ARCHITECTURE behavior OF taaa IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vgatest
    PORT(
         clock : IN  std_logic;
         R : OUT  std_logic;
         G : OUT  std_logic;
         B : OUT  std_logic;
         H : OUT  std_logic;
         V : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';

 	--Outputs
   signal R : std_logic;
   signal G : std_logic;
   signal B : std_logic;
   signal H : std_logic;
   signal V : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vgatest PORT MAP (
          clock => clock,
          R => R,
          G => G,
          B => B,
          H => H,
          V => V
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
