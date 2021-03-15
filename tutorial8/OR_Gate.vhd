library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity OR_Gate is
Port(A_or: in STD_LOGIC;
	  B_or: in STD_LOGIC;
	  C_or: out STD_LOGIC);
end OR_Gate;

architecture dataflow of OR_Gate is

begin

	C_or <= A_or OR B_or;
	
end dataflow;