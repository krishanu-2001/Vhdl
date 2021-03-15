library IEEE;
use IEEE.STD_logic_1164.ALL;
entity HA is
port(
	  X: in STD_LOGIC;
	  Y: in STD_LOGIC;
	  S: out STD_LOGIC;
	  C: out STD_LOGIC);
end HA;

architecture dataflow of HA is
	begin
		S <= X Xor Y;
		C <= X And Y;
end dataflow;
