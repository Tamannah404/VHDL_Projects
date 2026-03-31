library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_structural is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           y : out STD_LOGIC);
end xor_structural;

architecture structural of xor_structural is

    signal na, nb, w1, w2: STD_LOGIC;

begin

    na <= not a;
    nb <= not b;

    w1 <= a and nb;
    w2 <= na and b;

    y <= w1 or w2;

end structural;