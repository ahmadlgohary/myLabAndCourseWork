LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY C IS
PORT (
S : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
L : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END C;

ARCHITECTURE Behaviour OF C IS
BEGIN
    PROCESS (S)
    BEGIN
    L(0) <=((Not S(2) and Not S(1) and Not S(0)) Or (Not S(3) and Not S(2) and S(0)) or (S(2) and S(1) and Not S(0)) Or (Not S(3) and Not S(1) and S(0)));
    L(1) <=(S(3) and S(0));
    L(2) <=((S(3) and Not S(0) ) Or (Not S(3) and Not S(2) and Not S(1) and S(0)));
    L(3) <=(S(2) and S(1) and S(0));
    END PROCESS;
END Behaviour;