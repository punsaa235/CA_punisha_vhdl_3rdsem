library ieee;
use ieee.std_logic_1164.all;

entity xor_gate_tb is
end xor_gate_tb;

architecture testbench of xor_gate_tb is
    signal a : std_logic;
    signal b : std_logic;
    signal y : std_logic;

    component xor_gate
        port (
            a : in std_logic;
            b : in std_logic;
            y : out std_logic
        );
    end component;

begin
    uut: xor_gate port map (a => a, b => b, y => y);

    process
    begin
        a <= '0'; b <= '0'; wait for 10 ns;
        a <= '0'; b <= '1'; wait for 10 ns;
        a <= '1'; b <= '0'; wait for 10 ns;
        a <= '1'; b <= '1'; wait for 10 ns;
        wait;
    end process;
end testbench;
