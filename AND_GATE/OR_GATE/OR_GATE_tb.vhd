library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR_GATE_tb is
end OR_GATE_tb;

architecture Behavioral of OR_GATE_tb is

    -- Component declaration
    component OR_GATE
        Port (
            A : in std_logic;
            B : in std_logic;
            Y : out std_logic
        );
    end component;

    -- Signals
    signal A, B, Y : std_logic;

begin

    -- Instantiate OR gate
    uut: OR_GATE port map (
        A => A,
        B => B,
        Y => Y
    );

    -- Stimulus process
    process
    begin
        A <= '0'; B <= '0';
        wait for 10 ns;

        A <= '0'; B <= '1';
        wait for 10 ns;

        A <= '1'; B <= '0';
        wait for 10 ns;

        A <= '1'; B <= '1';
        wait for 10 ns;

        wait;
    end process;

end Behavioral;