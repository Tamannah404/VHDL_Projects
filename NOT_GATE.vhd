library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration
entity not_gate is
    Port (
        A : in STD_LOGIC;   -- Input
        Y : out STD_LOGIC   -- Output
    );
end not_gate;

-- Architecture
architecture Behavioral of not_gate is
begin

    Y <= NOT A;   -- NOT operation (inverter)

end Behavioral;