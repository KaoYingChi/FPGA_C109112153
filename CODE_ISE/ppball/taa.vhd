--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:49:32 12/03/2022
-- Design Name:   
-- Module Name:   E:/school_3/ppball/taa.vhd
-- Project Name:  ppball
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VGAdrive
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
 
ENTITY taa IS
END taa;
 
ARCHITECTURE behavior OF taa IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT VGAdrive
    PORT(
         clock : IN  std_logic;
         red : IN  std_logic;
         green : IN  std_logic;
         blue : IN  std_logic;
         row : OUT  std_logic_vector(9 downto 0);
         column : OUT  std_logic_vector(9 downto 0);
         Rout : OUT  std_logic;
         Gout : OUT  std_logic;
         Bout : OUT  std_logic;
         H : OUT  std_logic;
         V : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal red : std_logic := '0';
   signal green : std_logic := '0';
   signal blue : std_logic := '0';

 	--Outputs
   signal row : std_logic_vector(9 downto 0);
   signal column : std_logic_vector(9 downto 0);
   signal Rout : std_logic;
   signal Gout : std_logic;
   signal Bout : std_logic;
   signal H : std_logic;
   signal V : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: VGAdrive PORT MAP (
          clock => clock,
          red => red,
          green => green,
          blue => blue,
          row => row,
          column => column,
          Rout => Rout,
          Gout => Gout,
          Bout => Bout,
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
