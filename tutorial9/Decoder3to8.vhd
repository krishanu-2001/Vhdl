library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- define entity
entity Decoder3to8 is
Port(S: in STD_LOGIC_VECTOR(2 downto 0);
	  EN: in STD_LOGIC; 
	  I: out STD_LOGIC_VECTOR(7 downto 0));
end Decoder3to8;

--behavioural architecture
architecture bhv of Decoder3to8 is
begin
Process(S,EN)
	begin
		if EN = '1' then
			if S = "000" then 
				I <= "00000001";
			
			elsif S = "001" then
				I <= "00000010";
				
			elsif S = "010" then
				I <= "00000100";
				
			elsif S = "011" then
				I <= "00001000";
				
			elsif S = "100" then
				I <= "00010000";
				
			elsif S = "101" then
				I <= "00100000";
				
			elsif S = "110" then
				I <= "01000000";
				
			elsif S = "111" then
				I <= "10000000";
				
			end if;
		end if;
	end process;
end bhv;