library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity HA is
Port(A_ha: in STD_LOGIC;
	  B_ha: in STD_LOGIC;
	  S_ha: out STD_LOGIC;
	  C_ha: out STD_LOGIC);
end HA;

architecture dataflow of HA is

begin

	S_ha <= A_ha XOR B_ha;
	C_ha <= A_ha AND B_ha;
	
end dataflow;