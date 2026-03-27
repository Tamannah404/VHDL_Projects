----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.03.2026 20:40:17
-- Design Name: 
-- Module Name: OR_GATE - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR_GATE is
Port (
    A : in std_logic;
    B : in std_logic;
    y : out std_logic
);
end OR_GATE;

architecture Behavioral of OR_GATE is
begin
    Y <= A OR B;
end Behavioral;