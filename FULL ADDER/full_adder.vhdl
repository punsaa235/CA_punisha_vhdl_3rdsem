-- fulladder.vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration
entity fulladder is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Cin : in STD_LOGIC;
        Sum : out STD_LOGIC;
        Cout : out STD_LOGIC
    );
end fulladder;

-- Architecture Definition
architecture Behavioral of fulladder is
begin
    -- XOR gates for Sum
    Sum <= A xor B xor Cin;

    -- Logic for Carry-out
    Cout <= (A and B) or (B and Cin) or (A and Cin);
end Behavioral;
