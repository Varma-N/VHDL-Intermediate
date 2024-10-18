-- Ripple Carry Adder VHDL Code
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RIPPLE_CARRY_ADDER is
    Port (
        A : in  STD_LOGIC_VECTOR (3 downto 0);  -- 4-bit input A
        B : in  STD_LOGIC_VECTOR (3 downto 0);  -- 4-bit input B
        Cin : in  STD_LOGIC;                     -- Carry input
        Sum : out  STD_LOGIC_VECTOR (3 downto 0); -- 4-bit sum output
        Cout : out  STD_LOGIC                    -- Carry output
    );
end RIPPLE_CARRY_ADDER;

architecture Behavioral of RIPPLE_CARRY_ADDER is
    signal C : STD_LOGIC_VECTOR (4 downto 0); -- Carry signals
begin
    C(0) <= Cin;  -- First carry input

    -- Full adder logic
    Sum(0) <= A(0) XOR B(0) XOR C(0);
    C(1) <= (A(0) AND B(0)) OR (C(0) AND (A(0) XOR B(0)));

    Sum(1) <= A(1) XOR B(1) XOR C(1);
    C(2) <= (A(1) AND B(1)) OR (C(1) AND (A(1) XOR B(1)));

    Sum(2) <= A(2) XOR B(2) XOR C(2);
    C(3) <= (A(2) AND B(2)) OR (C(2) AND (A(2) XOR B(2)));

    Sum(3) <= A(3) XOR B(3) XOR C(3);
    Cout <= (A(3) AND B(3)) OR (C(3) AND (A(3) XOR B(3)));
end Behavioral;
