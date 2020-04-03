LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PARTB IS
    PORT(
        A,B   : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
        S     : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
        CIN   : IN STD_LOGIC;
        F     : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
        COUT  : OUT STD_LOGIC
    );
END PARTB;

ARCHITECTURE PARTB_FUNC OF PARTB IS
BEGIN
    F<= A AND B WHEN S(0)='0' AND S(1)='0'
    ELSE A OR B WHEN S(0)='1' AND S(1)='0'
    ELSE A XNOR B WHEN S(0)='0' AND S(1)='1'
    ELSE (NOT A);

    COUT <= CIN;
END PARTB_FUNC;
