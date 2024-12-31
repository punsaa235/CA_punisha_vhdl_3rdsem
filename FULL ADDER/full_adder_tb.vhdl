-- fulladder_tb.vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration
entity fulladder_tb is
end fulladder_tb;

-- Architecture Definition
architecture Behavioral of fulladder_tb is
    -- Component Declaration
    component fulladder
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            Cin : in STD_LOGIC;
            Sum : out STD_LOGIC;
            Cout : out STD_LOGIC
        );
    end component;

    -- Signals to connect to the DUT (Device Under Test)
    signal A : STD_LOGIC := '0';
    signal B : STD_LOGIC := '0';
    signal Cin : STD_LOGIC := '0';
    signal Sum : STD_LOGIC;
    signal Cout : STD_LOGIC;

begin
    -- Instantiate the Full Adder
    DUT: fulladder
        Port map (
            A => A,
            B => B,
            Cin => Cin,
            Sum => Sum,
            Cout => Cout
        );

    -- Stimulus process
    stimulus: process
    begin
        -- Test Case 1: A=0, B=0, Cin=0
        A <= '0'; B <= '0'; Cin <= '0';
        wait for 10 ns;

        -- Test Case 2: A=0, B=0, Cin=1
        A <= '0'; B <= '0'; Cin <= '1';
        wait for 10 ns;

        -- Test Case 3: A=0, B=1, Cin=0
        A <= '0'; B <= '1'; Cin <= '0';
        wait for 10 ns;

        -- Test Case 4: A=0, B=1, Cin=1
        A <= '0'; B <= '1'; Cin <= '1';
        wait for 10 ns;

        -- Test Case 5: A=1, B=0, Cin=0
        A <= '1'; B <= '0'; Cin <= '0';
        wait for 10 ns;

        -- Test Case 6: A=1, B=0, Cin=1
        A <= '1'; B <= '0'; Cin <= '1';
        wait for 10 ns;

        -- Test Case 7: A=1, B=1, Cin=0
        A <= '1'; B <= '1'; Cin <= '0';
        wait for 10 ns;

        -- Test Case 8: A=1, B=1, Cin=1
        A <= '1'; B <= '1'; Cin <= '1';
        wait for 10 ns;

        -- Stop simulation
        wait;
    end process;

end Behavioral;
