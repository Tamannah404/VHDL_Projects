library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_gate is
    Port ( A, B : in STD_LOGIC;
           Y : out STD_LOGIC );
end nand_gate;

architecture Dataflow of nand_gate is
begin

    Y <= A nand B;   -- direct NAND operator

end Dataflow;