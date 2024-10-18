-- Testbench for Ripple Carry Adder
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RIPPLE_CARRY_ADDER_tb is
end RIPPLE_CARRY_ADDER_tb;

architecture Behavioral of RIPPLE_CARRY_ADDER_tb is

    -- Signals to connect to the RCA
    signal A_tb : STD_LOGIC_VECTOR(3 downto 0);
    signal B_tb : STD_LOGIC_VECTOR(3 downto 0);
    signal Cin_tb : STD_LOGIC;
    signal Sum_tb : STD_LOGIC_VECTOR(3 downto 0);
    signal Cout_tb : STD_LOGIC;

    -- Component Declaration for the Ripple Carry Adder
    component RIPPLE_CARRY_ADDER
        Port (
            A : in  STD_LOGIC_VECTOR (3 downto 0);
            B : in  STD_LOGIC_VECTOR (3 downto 0);
            Cin : in  STD_LOGIC;
            Sum : out  STD_LOGIC_VECTOR (3 downto 0);
            Cout : out  STD_LOGIC
        );
    end component;

begin

    -- Instantiate the Ripple Carry Adder
    uut: RIPPLE_CARRY_ADDER
        Port map (
            A => A_tb,
            B => B_tb,
            Cin => Cin_tb,
            Sum => Sum_tb,
            Cout => Cout_tb
        );

    -- Stimulus process to apply inputs and verify outputs
    stimulus: process
    begin
        -- Test Case 1: A = 0001, B = 0010, Cin = 0
        A_tb <= "0001"; B_tb <= "0010"; Cin_tb <= '0';
        wait for 10 ns;

        -- Test Case 2: A = 0011, B = 0101, Cin = 0
        A_tb <= "0011"; B_tb <= "0101"; Cin_tb <= '0';
        wait for 10 ns;

        -- Test Case 3: A = 1111, B = 0001, Cin = 0
        A_tb <= "1111"; B_tb <= "0001"; Cin_tb <= '0';
        wait for 10 ns;

        -- Test Case 4: A = 0111, B = 1001, Cin = 1
        A_tb <= "0111"; B_tb <= "1001"; Cin_tb <= '1';
        wait for 10 ns;

        -- Test Case 5: A = 1000, B = 1000, Cin = 1
        A_tb <= "1000"; B_tb <= "1000"; Cin_tb <= '1';
        wait for 10 ns;

        -- Stop the simulation
        wait;
    end process;

end Behavioral;
