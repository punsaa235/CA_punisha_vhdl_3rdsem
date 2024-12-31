
library ieee;
use ieee.std_logic_1164.all;

entity xor_gate is
    port (
        a : in std_logic;
        b : in std_logic;
        y : out std_logic
    );
end xor_gate;

architecture behavior of xor_gate is
begin
    y <= (a and not b) or (not a and b);
end behavior;
