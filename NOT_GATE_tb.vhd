library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity not_gate_tb is
end not_gate_tb;

architecture test of not_gate_tb is

    -- Component Declaration
    component not_gate
        Port (
            A : in STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    -- Signals to connect
    signal A : STD_LOGIC := '0';
    signal Y : STD_LOGIC;

begin

    -- Instantiate the NOT gate
    uut: not_gate port map (
        A => A,
        Y => Y
    );

    -- Stimulus process
    process
    begin
        A <= '0';
        wait for 10 ns;

        A <= '1';
        wait for 10 ns;

        wait;
    end process;

end test;
