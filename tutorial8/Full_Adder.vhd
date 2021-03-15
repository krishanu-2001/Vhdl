library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Full_Adder is
Port(A: in STD_LOGIC;
	  B: in STD_LOGIC;
	  Cin: in STD_LOGIC;
	  S: out STD_LOGIC;
	  Cout: out STD_LOGIC);
end Full_Adder;

architecture structural of Full_Adder is

component HA is
Port(A_ha: in STD_LOGIC;
	  B_ha: in STD_LOGIC;
	  S_ha: out STD_LOGIC;
	  C_ha: out STD_LOGIC);
end component;

component OR_Gate is
Port(A_or: in STD_LOGIC;
	  B_or: in STD_LOGIC;
	  C_or: out STD_LOGIC);
end component;
	
signal S1,C1,C2: STD_LOGIC;
	
begin
		HA1: HA port map(A_ha=>A,B_ha=>B,S_ha=>S1,C_ha=>C1);
		HA2: HA port map(S1,Cin,S,C2);
		OR1: OR_Gate port map(C1,C2,Cout);
end structural;