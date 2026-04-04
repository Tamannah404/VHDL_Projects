library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux8to1 is
    Port ( I0, I1, I2, I3, I4, I5, I6, I7 : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR(2 downto 0);
           Y : out STD_LOGIC);
end mux8to1;

architecture Behavioral of mux8to1 is
begin
    process(I0, I1, I2, I3, I4, I5, I6, I7, S)
    begin
        case S is
            when "000" => Y <= I0;
            when "001" => Y <= I1;
            when "010" => Y <= I2;
            when "011" => Y <= I3;
            when "100" => Y <= I4;
            when "101" => Y <= I5;
            when "110" => Y <= I6;
            when "111" => Y <= I7;
            when others => Y <= '0';
        end case;
    end process;
end Behavioral;
