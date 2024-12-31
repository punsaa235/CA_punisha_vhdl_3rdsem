
library ieee;
use ieee.std_logic_1164.all;

entity nand_gate is
    port (
        a : in std_logic;
        b : in std_logic;
        y : out std_logic
    );
end nand_gate;

architecture behavior of nand_gate is
begin
    y <= not (a and b);
end behavior;
