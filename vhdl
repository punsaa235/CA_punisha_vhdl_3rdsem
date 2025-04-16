library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Adder4Bit is
    Port (
        A        : in  STD_LOGIC_VECTOR (3 downto 0);
        B        : in  STD_LOGIC_VECTOR (3 downto 0);
        Sum      : out STD_LOGIC_VECTOR (3 downto 0);
        CarryOut : out STD_LOGIC;
        Overflow : out STD_LOGIC
    );
end Adder4Bit;

architecture Behavioral of Adder4Bit is
    signal TempSum : STD_LOGIC_VECTOR (4 downto 0);
begin
    process (A, B)
    begin
        -- Perform 4-bit addition with 1 extra bit for carry
        TempSum <= ('0' & A) + ('0' & B);
        Sum <= TempSum(3 downto 0);
        CarryOut <= TempSum(4);

        -- Overflow detection logic:
        -- Overflow occurs if sign of A and B are the same, and sign of Sum differs
        Overflow <= (A(3) and B(3) and not Sum(3)) or 
                    (not A(3) and not B(3) and Sum(3));
    end process;
end Behavioral;
