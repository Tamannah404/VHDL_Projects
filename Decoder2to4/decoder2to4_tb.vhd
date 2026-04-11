library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_decoder_2to4 is
end tb_decoder_2to4;

architecture Sim of tb_decoder_2to4 is
    signal A  : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal EN : STD_LOGIC := '0';
    signal Y  : STD_LOGIC_VECTOR(3 downto 0);

    component decoder_2to4
        Port (A : in STD_LOGIC_VECTOR(1 downto 0);
              EN: in STD_LOGIC;
              Y : out STD_LOGIC_VECTOR(3 downto 0));
    end component;
begin
    UUT: decoder_2to4 port map (A => A, EN => EN, Y => Y);

    process
    begin
        EN <= '0'; A <= "00"; wait for 10 ns;  -- disabled test
        EN <= '1'; A <= "00"; wait for 10 ns;  -- Y = 0001
        EN <= '1'; A <= "01"; wait for 10 ns;  -- Y = 0010
        EN <= '1'; A <= "10"; wait for 10 ns;  -- Y = 0100
        EN <= '1'; A <= "11"; wait for 10 ns;  -- Y = 1000
        wait;
    end process;
end Sim;
