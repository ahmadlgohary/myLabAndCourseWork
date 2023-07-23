library verilog;
use verilog.vl_types.all;
entity Jcounter is
    port(
        Clrn            : in     vl_logic;
        E               : in     vl_logic;
        Clkn            : in     vl_logic;
        STUDENT_ID      : out    vl_logic_vector(3 downto 0);
        Q               : out    vl_logic_vector(0 to 2)
    );
end Jcounter;
