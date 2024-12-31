
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XNOR_Gate is
    Port (
        A : in  STD_LOGIC; 
        B : in  STD_LOGIC; 
        Y : out STD_LOGIC  
    );
end XNOR_Gate;

architecture Behavioral of XNOR_Gate is
begin
    Y <= A xnor B; 
end Behavioral;
