library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4to1 is
    Port ( I0, I1, I2, I3 : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR(1 downto 0);
           Y : out STD_LOGIC);
end mux4to1;

architecture Behavioral of mux4to1 is
begin
    process(I0, I1, I2, I3, S)
    begin
        case S is
            when "00" => Y <= I0;
            when "01" => Y <= I1;
            when "10" => Y <= I2;
            when "11" => Y <= I3;
            when others => Y <= '0';
        end case;
    end process;
end Behavioral;