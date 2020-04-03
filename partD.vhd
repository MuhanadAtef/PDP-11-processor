LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PARTD IS
    PORT(
        A    : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
        S    : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
        CIN  : IN STD_LOGIC;
        F    : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
        COUT : OUT STD_LOGIC
    );
END PARTD;

ARCHITECTURE PARTD_FUNC OF PARTD IS
BEGIN
    COUT <= A(15) WHEN S(1)='1' AND S(0)='0';
    F<= A(14 DOWNTO 0) & '0' WHEN S(1)='0' AND S(0)='0'
    ELSE A(14 DOWNTO 0) & A(15) WHEN S(1)='0' AND S(0)='1'
    ELSE A(14 DOWNTO 0) & CIN WHEN S(1)='1' AND S(0)='0'
    ELSE "0000000000000000";
END PARTD_FUNC;
