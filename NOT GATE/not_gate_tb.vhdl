library ieee;
use ieee.std_logic_1164.all;

entity not_gate_tb is
end not_gate_tb;

architecture testbench of not_gate_tb is
    component not_gate is
        port ( a : in std_logic;
               y : out std_logic);
    end component;

    signal a : std_logic := '0';
    signal y : std_logic;
begin
    uut: not_gate port map (a => a, y => y);

    stimulus: process
    begin
        a <= '0';
        wait for 10 ns;
        a <= '1';
        wait for 10 ns;
        wait;
    end process;
end testbench;
