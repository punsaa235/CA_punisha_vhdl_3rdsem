library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate_tb is
end or_gate_tb;


architecture Behavioral of or_gate_tb is
    
    component or_gate
        Port (
            a : in STD_LOGIC;
            b : in STD_LOGIC;
            y : out STD_LOGIC
        );
    end component;

   
    signal a : STD_LOGIC := '0';
    signal b : STD_LOGIC := '0';
    signal y : STD_LOGIC;
begin
   
    uut: or_gate
        Port map (
            a => a,
            b => b,
            y => y
        );

  
    process
    begin
        
        a <= '0';
        b <= '0';
        wait for 10 ns;

       
        a <= '0';
        b <= '1';
        wait for 10 ns;

        
        a <= '1';
        b <= '0';
        wait for 10 ns;

        
        a <= '1';
        b <= '1';
        wait for 10 ns;

        
        wait;
    end process;
end Behavioral;
