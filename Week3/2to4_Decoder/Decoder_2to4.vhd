 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity decoder_2to4 is
	port (A1 ,A0, E : in std_logic;
			  Y3 ,Y2, Y1 ,Y0 : out std_logic);
end entity decoder_2to4;

architecture Struct of decoder_2to4 is
	signal TA1, TA0 : std_logic;
begin 

	InverterA1 : Inverter 
		port map( A => A1, Y =>TA1);
	InverterA0 : Inverter
		port map( A => A0, Y =>TA0);
	And1 : AND_3
		port map( A => A1, B => A0, C =>E ,Y => Y3);
	And2 : AND_3
		port map( A => A1, B => TA0, C =>E ,Y => Y2);
	And3 : AND_3
		port map( A => TA1, B => A0, C =>E ,Y => Y1);
	And4 : AND_3
		port map( A => TA1, B => TA0, C =>E ,Y => Y0);

end Struct;

	