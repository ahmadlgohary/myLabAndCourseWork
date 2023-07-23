library verilog;
use verilog.vl_types.all;
entity circuit2 is
    port(
        display         : out    vl_logic_vector(0 to 6);
        Cin             : in     vl_logic;
        X               : in     vl_logic_vector(3 downto 0);
        Y               : in     vl_logic_vector(3 downto 0);
        neg_display     : out    vl_logic_vector(0 to 6)
    );
end circuit2;
