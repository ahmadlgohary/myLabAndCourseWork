LIBRARY ieee;
USE ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;

ENTITY Lab2 IS
PORT (
x1,x2,x3,x4 : IN STD_LOGIC ;
f : OUT STD_LOGIC ) ;
end Lab2;

ARCHITECTURE Behavior OF Lab2 IS 
BEGIN
f <= (not x1 and not x3 and x4) or (x1 and not x2 and not x3 and not x4) or (not x1 and not x2 and x3 and not x4) or (x1 and x2 and x3) or (x1 and x3 and x4);
END Behavior;

