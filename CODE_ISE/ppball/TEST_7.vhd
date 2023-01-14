--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:33:01 11/02/2022
-- Design Name:   
-- Module Name:   C:/Users/User/Desktop/school_3/ppball/TEST_7.vhd
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
 
ENTITY TEST_7 IS
END TEST_7;
 
ARCHITECTURE behavior OF TEST_7 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ppl
    PORT(
         CLK : IN  std_logic;
         rst : IN  std_logic;
         left_button : IN  std_logic;
         right_button : IN  std_logic;
        
         led_1 : OUT  std_logic;
         led_2 : OUT  std_logic;
         led_3 : OUT  std_logic;
         led_4 : OUT  std_logic;
         led_5 : OUT  std_logic;
         led_6 : OUT  std_logic;
         led_7 : OUT  std_logic;
         led_8 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal rst : std_logic := '0';
   signal left_button : std_logic := '0';
   signal right_button : std_logic := '0';

 	--Outputs

   signal led_1 : std_logic;
   signal led_2 : std_logic;
   signal led_3 : std_logic;
   signal led_4 : std_logic;
   signal led_5 : std_logic;
   signal led_6 : std_logic;
   signal led_7 : std_logic;
   signal led_8 : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ppl PORT MAP (
          CLK => CLK,
          rst => rst,
          left_button => left_button,
          right_button => right_button,
         
          led_1 => led_1,
          led_2 => led_2,
          led_3 => led_3,
          led_4 => led_4,
          led_5 => led_5,
          led_6 => led_6,
          led_7 => led_7,
          led_8 => led_8
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

      wait;
   end process;

END;
