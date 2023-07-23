library verilog;
use verilog.vl_types.all;
entity decodModified is
    port(
        Y               : out    vl_logic_vector(0 to 7);
        W2              : in     vl_logic;
        En              : in     vl_logic;
        W               : in     vl_logic_vector(1 downto 0)
    );
end decodModified;
