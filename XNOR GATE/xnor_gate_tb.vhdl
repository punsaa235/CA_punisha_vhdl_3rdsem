
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XNOR_Gate_tb is
end XNOR_Gate_tb;

architecture Behavioral of XNOR_Gate_tb is
     component XNOR_Gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

     signal A_tb : STD_LOGIC := '0';
    signal B_tb : STD_LOGIC := '0';
    signal Y_tb : STD_LOGIC;

begin
       UUT: XNOR_Gate
        Port map (
            A => A_tb,
            B => B_tb,
            Y => Y_tb
        );
 stim_proc: process
    begin
        A_tb <= '0';
        B_tb <= '0';
        wait for 10 ns;
        
        A_tb <= '0';
        B_tb <= '1';
        wait for 10 ns;
        
        A_tb <= '1';
        B_tb <= '0';
        wait for 10 ns;
        
        A_tb <= '1';
        B_tb <= '1';
        wait for 10 ns;

     wait;
    end process;
end Behavioral;
