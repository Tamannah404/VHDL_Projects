library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_mux4to1 is
end tb_mux4to1;

architecture behavior of tb_mux4to1 is

    -- Component Declaration
    component mux4to1
        Port ( I0, I1, I2, I3 : in STD_LOGIC;
               S : in STD_LOGIC_VECTOR(1 downto 0);
               Y : out STD_LOGIC);
    end component;

    -- Signals
    signal I0, I1, I2, I3 : STD_LOGIC := '0';
    signal S : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal Y : STD_LOGIC;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: mux4to1
        port map (
            I0 => I0,
            I1 => I1,
            I2 => I2,
            I3 => I3,
            S  => S,
            Y  => Y
        );

    -- Stimulus Process
    process
    begin
        -- Apply input values
        I0 <= '0';
        I1 <= '1';
        I2 <= '0';
        I3 <= '1';

        -- Test all select cases
        S <= "00"; wait for 10 ns;  -- Y = I0
        S <= "01"; wait for 10 ns;  -- Y = I1
        S <= "10"; wait for 10 ns;  -- Y = I2
        S <= "11"; wait for 10 ns;  -- Y = I3

        wait; -- End simulation
    end process;

end behavior;
