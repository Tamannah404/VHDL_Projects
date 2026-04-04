library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_mux8to1 is
end tb_mux8to1;

architecture behavior of tb_mux8to1 is

    -- Component Declaration
    component mux8to1
        Port ( I0, I1, I2, I3, I4, I5, I6, I7 : in STD_LOGIC;
               S : in STD_LOGIC_VECTOR(2 downto 0);
               Y : out STD_LOGIC);
    end component;

    -- Signals
    signal I0, I1, I2, I3, I4, I5, I6, I7 : STD_LOGIC := '0';
    signal S : STD_LOGIC_VECTOR(2 downto 0) := "000";
    signal Y : STD_LOGIC;

begin

    -- Instantiate the MUX
    uut: mux8to1
        port map (
            I0 => I0, I1 => I1, I2 => I2, I3 => I3,
            I4 => I4, I5 => I5, I6 => I6, I7 => I7,
            S => S,
            Y => Y
        );

    -- Stimulus Process
    process
    begin
        -- Assign values to inputs
        I0 <= '0'; I1 <= '1'; I2 <= '0'; I3 <= '1';
        I4 <= '1'; I5 <= '0'; I6 <= '1'; I7 <= '0';

        -- Test all select lines
        S <= "000"; wait for 10 ns;
        S <= "001"; wait for 10 ns;
        S <= "010"; wait for 10 ns;
        S <= "011"; wait for 10 ns;
        S <= "100"; wait for 10 ns;
        S <= "101"; wait for 10 ns;
        S <= "110"; wait for 10 ns;
        S <= "111"; wait for 10 ns;

        wait; -- stop simulation
    end process;

end behavior;
