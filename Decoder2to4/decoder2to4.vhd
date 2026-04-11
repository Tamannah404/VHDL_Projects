-- 2-to-4 Line Decoder (Xilinx Vivado / ISE)
-- Inputs:  A(1:0) = 2-bit select, EN = enable
-- Outputs: Y(3:0) = 4-bit one-hot output

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_2to4 is
    Port (
        A  : in  STD_LOGIC_VECTOR(1 downto 0);  -- 2-bit input
        EN : in  STD_LOGIC;                       -- active-high enable
        Y  : out STD_LOGIC_VECTOR(3 downto 0)    -- 4 outputs
    );
end decoder_2to4;

architecture Behavioral of decoder_2to4 is
begin
    process(A, EN)
    begin
        if EN = '1' then
            case A is
                when "00"   => Y <= "0001";
                when "01"   => Y <= "0010";
                when "10"   => Y <= "0100";
                when "11"   => Y <= "1000";
                when others => Y <= "0000";
            end case;
        else
            Y <= "0000";  -- disabled: all outputs low
        end if;
    end process;
end Behavioral;
