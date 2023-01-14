Library IEEE;
use IEEE.STD_Logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity VGAdrive is
  port( clock            : in std_logic;  -- 25.175 Mhz clock
        red, green, blue : in std_logic;  -- input values for RGB signals
        row, column : out std_logic_vector(9 downto 0); -- for current pixel
        Rout, Gout, Bout, H, V : out std_logic); -- VGA drive signals
  -- The signals Rout, Gout, Bout, H and V are output to the monitor.
  -- The row and column outputs are used to know when to assert red,
  -- green and blue to color the current pixel.  For VGA, the column
  -- values that are valid are from 0 to 639, all other values should
  -- be ignored.  The row values that are valid are from 0 to 479 and
  -- again, all other values are ignored.  To turn on a pixel on the
  -- VGA monitor, some combination of red, green and blue should be
  -- asserted before the rising edge of the clock.  Objects which are
  -- displayed on the monitor, assert their combination of red, green and
  -- blue when they detect the row and column values are within their
  -- range.  For multiple objects sharing a screen, they must be combined
  -- using logic to create single red, green, and blue signals.
end;

architecture behaviour1 of VGAdrive is
  -- names are referenced from Altera University Program Design
  -- Laboratory Package  November 1997, ver. 1.1  User Guide Supplement
  -- clock period = 39.72 ns; the constants are integer multiples of the
  -- clock frequency and are close but not exact
  -- row counter will go from 0 to 524; column counter from 0 to 799
  subtype counter is std_logic_vector(9 downto 0);
  constant B : natural := 93;  -- horizontal blank: 3.77 us
  constant C : natural := 45;  -- front guard: 1.89 us
  constant D : natural := 640; -- horizontal columns: 25.17 us
  constant E : natural := 22;  -- rear guard: 0.94 us
  constant A : natural := B + C + D + E;  -- one horizontal sync cycle: 31.77 us
  constant P : natural := 2;   -- vertical blank: 64 us
  constant Q : natural := 32;  -- front guard: 1.02 ms
  constant R : natural := 480; -- vertical rows: 15.25 ms
  constant S : natural := 11;  -- rear guard: 0.35 ms
  constant O : natural := P + Q + R + S;  -- one vertical sync cycle: 16.6 ms
  
  component  minfo is
       port ( clk : in STD_LOGIC;
              rst : in STD_LOGIC;
              clk4 : out STD_LOGIC);
  end component;
  signal clock1 : std_logic;

   
begin
  dif : component minfo
    port map ( clk => clock ,rst => '0', clk4 => clock1);

  Rout <= red;
  Gout <= green;
  Bout <= blue;

  process
    variable vertical, horizontal : counter;  -- define counters
  begin
    wait until clock1 = '1';

  -- increment counters
      if  horizontal < A - 1  then
        horizontal := horizontal + 1;
      else
        horizontal := (others => '0');

        if  vertical < O - 1  then -- less than oh
          vertical := vertical + 1;
        else
          vertical := (others => '0');       -- is set to zero
        end if;
      end if;

  -- define H pulse
      if  horizontal >= (D + E)  and  horizontal < (D + E + B)  then
        H <= '0';
      else
        H <= '1';
      end if;

  -- define V pulse
      if  vertical >= (R + S)  and  vertical < (R + S + P)  then
        V <= '0';
      else
        V <= '1';
      end if;

    -- mapping of the variable to the signals
     -- negative signs are because the conversion bits are reversed
    row <= vertical;
    column <= horizontal;

  end process;

end architecture;


-- RGB VGA test pattern  Rob Chapman  Mar 9, 1998

 -- This file uses the VGA driver and creates 3 squares on the screen which
 -- show all the available colors from mixing red, green and blue

Library IEEE;
use IEEE.STD_Logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity vgatest is
  port(clock         : in std_logic;
       R, G, B, H, V : out std_logic;
		 left_button :in std_logic;
		 right_button :in std_logic);
end entity;

architecture test of vgatest is

  component vgadrive is
    port( clock          : in std_logic;  -- 25.175 Mhz clock
        red, green, blue : in std_logic;  -- input values for RGB signals
        row, column      : out std_logic_vector(9 downto 0); -- for current pixel
        Rout, Gout, Bout, H, V : out std_logic); -- VGA drive signals
  end component;
  
  component ppl is
     port(
	        CLK    :in std_logic;
			  rst    :in std_logic;
	   left_button :in std_logic;
	  right_button :in std_logic;
		led_1       :out std_logic;
		led_2       :out std_logic;
		led_3       :out std_logic;
		led_4       :out std_logic;
		led_5       :out std_logic;
		led_6       :out std_logic;
		led_7       :out std_logic;
		led_8       :out std_logic
	  
	  );
	end component;
  
  
  signal row, column : std_logic_vector(9 downto 0);
  signal red, green, blue : std_logic;
  signal led1,led2,led3,led4,led5,led6,led7,led8: std_logic;

begin

  -- for debugging: to view the bit order
  VGA : component vgadrive
    port map ( clock => clock, red => red, green => green, blue => blue,
               row => row, column => column,
               Rout => R, Gout => G, Bout => B, H => H, V => V);
  PPB : component ppl
    port map (CLK => clock , rst => '0' , left_button => left_button ,
	           right_button => right_button , led_1 => led1 ,led_2 => led2, led_3 => led3 ,
	            led_4 => led4 , led_5 => led5 , led_6 => led6 , led_7 => led7 , led_8 => led8 );
 
  -- red square from 0,0 to 360, 350
  -- green square from 0,250 to 360, 640
  -- blue square from 120,150 to 480,500
--  RGB : process(row, column)
--   begin
--    -- wait until clock = '1';
    
--    if  row < 360 and column < 350  then
--      red <= '1';
--   else
--      red <= '0';
--    end if;
    
--    if  row < 360 and column > 250 and column < 640  then
--     green <= '1';
--  else
--     green <= '0';
--    end if;
    
--    if  row > 120 and row < 480 and column > 150 and column < 500  then
--      blue <= '1';
--   else
--      blue <= '0';
--   end if;

--  end process;
  
  LED : process(clock ,row,column ,led1,led2,led3,led4,led5,led6,led7,led8)
     begin
	     if clock'event and clock = '1' then
	  
	        if row > 120 and row < 360 and column > 50 and column < 110 then
				  if led1 = '1' then
                     green <= '1';
					 blue <= '0';
					 red <= '0';
				 end if;
                 if led1 = '0' then
                     green <= '0';
					 blue <= '0';	
					 red <= '1';
					 
              end if;
           end if;
           
           if row > 120 and row < 360 and column > 110 and column < 170 then
				  if led2 = '1' then
                     green <= '1';
					 blue <= '0';
					  red <= '0';
				 end if;
                 if led2 = '0' then
                     green <= '0';
					 blue <= '0';	
					 red <= '1';
              end if;
           end if;
           
           if row > 120 and row < 360 and column > 170 and column < 230 then
				  if led3 = '1' then
                     green <= '1';
					 blue <= '0';
					  red <= '0';
				 end if;
                 if led3 = '0' then
                     green <= '0';
					 blue <= '0';	
					 red <= '1';
              end if;
           end if;
    
           if row > 120 and row < 360 and column > 230 and column < 290 then
			  if led4 = '1' then
                     green <= '1';
					 blue <= '0';
					  red <= '0';
				 end if;
                 if led4 = '0' then
                     green <= '0';
					 blue <= '0';	
					 red <= '1';
              end if;
           end if;

           if row > 120 and row < 360 and column > 290 and column < 350 then
				  if led5 = '1' then
                     green <= '1';
					 blue <= '0';
					  red <= '0';
				 end if;
                 if led5 = '0' then
                     green <= '0';
					 blue <= '0';	
					 red <= '1';
              end if;
           end if;

           if row > 120 and row < 360 and column > 350 and column < 410 then
				  if led6 = '1' then
                     green <= '1';
					 blue <= '0';
					  red <= '0';
				 end if;
                 if led6 = '0' then
                     green <= '0';
					 blue <= '0';	
					 red <= '1';
              end if;
           end if;

           if row > 120 and row < 360 and column > 410 and column < 470 then
				  if led7 = '1' then
                     green <= '1';
					 blue <= '0';
					  red <= '0';
				 end if;
                 if led7 = '0' then
                     green <= '0';
					 blue <= '0';	
					 red <= '1';
              end if;
           end if;

           if row > 120 and row < 360 and column > 470 and column < 530 then
				  if led8 = '1' then
                     green <= '1';
					 blue <= '0';
					 red <= '0';
				 end if;
                 if led8 = '0' then
                     green <= '0';
					 blue <= '0';	
					 red <= '1';
              end if;
           end if;
       end if;
   end process;	 
				  
			  

end architecture;


