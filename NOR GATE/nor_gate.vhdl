
library ieee;
use ieee.std_logic_1164.all;

entity nor_gate is
    port (
        a : in std_logic;
        b : in std_logic;
        y : out std_logic
    );
end nor_gate;

architecture behavior of nor_gate is
begin
    y <= not (a or b);
end behavior;
