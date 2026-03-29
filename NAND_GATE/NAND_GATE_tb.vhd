library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_gate_tb is
end nand_gate_tb;

architecture test of nand_gate_tb is

    -- Component Declaration
    component nand_gate
        Port ( A, B : in STD_LOGIC;
               Y : out STD_LOGIC );
    end component;

    -- Signals
    signal A, B : STD_LOGIC := '0';
    signal Y : STD_LOGIC;

begin

    -- Instantiate Unit Under Test
    uut: nand_gate port map (
        A => A,
        B => B,
        Y => Y
    );

    -- Stimulus Process
    process
    begin
        A <= '0'; B <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; wait for 10 ns;

        wait;
    end process;

end test;
