library IEEE;
use IEEE.STD_logic_1164.ALL;
entity Half_Adder1 is
port(
	  X: in STD_LOGIC;
	  Y: in STD_LOGIC;
	  S: out STD_LOGIC;
	  C: out STD_LOGIC);
end Half_Adder1;

architecture dataflow of Half_Adder1 is
	begin
		S <= X Xor Y;
		C <= X And Y;
end dataflow;
