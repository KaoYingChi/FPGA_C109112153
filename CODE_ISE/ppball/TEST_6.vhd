--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:57:05 10/22/2022
-- Design Name:   
-- Module Name:   C:/Users/USER/Desktop/test 2/test/school_3/ppball/TEST_6.vhd
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
 
ENTITY TEST_6 IS
END TEST_6;
 
ARCHITECTURE behavior OF TEST_6 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ppl
    PORT(
         CLK : IN  std_logic;
         rst : IN  std_logic;
         left_button : IN  std_logic;
         right_button : IN  std_logic;
         led_7_right_on : OUT  std_logic;
         led_7_left_on : OUT  std_logic;
         led_7_scan : OUT  std_logic_vector(6 downto 0);
         led_eight : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal rst : std_logic := '0';
   signal left_button : std_logic := '0';
   signal right_button : std_logic := '0';

 	--Outputs
   signal led_7_right_on : std_logic;
   signal led_7_left_on : std_logic;
   signal led_7_scan : std_logic_vector(6 downto 0);
   signal led_eight : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ppl PORT MAP (
          CLK => CLK,
          rst => rst,
          left_button => left_button,
          right_button => right_button,
          left_win => left_win,
          right_win => right_win,
          led_7_right_on => led_7_right_on,
          led_7_left_on => led_7_left_on,
          led_7_scan => led_7_scan,
          led_eight => led_eight
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
      rst <='1';
      wait for 100 ns;	
      rst <= '0';
		wait for 100 ns;
		right_button <='1';
		wait for 100 ns ;
		right_button <='0';
		wait for 10 us;
		right_button <='1';
		wait for 100 ns ;
		right_button <='0';
		wait for 10 us;
		right_button <='1';
		wait for 100 ns ;
		right_button <='0';
		wait for 10 us;

      -- insert stimulus here 

      wait;
   end process;

END;
