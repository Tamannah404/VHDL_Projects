library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Half_Adder is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        SUM : out STD_LOGIC;
        CARRY : out STD_LOGIC
    );
end Half_Adder;

architecture Behavioral of Half_Adder is
begin
    process(A, B)
    begin
        SUM <= A XOR B;
        CARRY <= A AND B;
    end process;
end Behavioral;


