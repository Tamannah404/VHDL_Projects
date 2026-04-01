library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Half_Adder_tb is
end Half_Adder_tb;

architecture Behavioral of Half_Adder_tb is

    -- Component Declaration
    component Half_Adder
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            SUM : out STD_LOGIC;
            CARRY : out STD_LOGIC
        );
    end component;

    -- Signals to connect to DUT (Device Under Test)
    signal A, B : STD_LOGIC;
    signal SUM, CARRY : STD_LOGIC;

begin

    -- Instantiate the Half Adder
    UUT: Half_Adder port map (
        A => A,
        B => B,
        SUM => SUM,
        CARRY => CARRY
    );

    -- Stimulus Process
    process
    begin
        -- Test case 1
        A <= '0'; B <= '0';
        wait for 10 ns;

        -- Test case 2
        A <= '0'; B <= '1';
        wait for 10 ns;

        -- Test case 3
        A <= '1'; B <= '0';
        wait for 10 ns;

        -- Test case 4
        A <= '1'; B <= '1';
        wait for 10 ns;

        wait; -- stops simulation
    end process;

end Behavioral;