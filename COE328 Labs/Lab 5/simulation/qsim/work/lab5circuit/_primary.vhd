library verilog;
use verilog.vl_types.all;
entity lab5circuit is
    port(
        led             : out    vl_logic_vector(0 to 6);
        clk             : in     vl_logic;
        data_in         : in     vl_logic;
        reset           : in     vl_logic;
        ledss           : out    vl_logic_vector(0 to 6);
        States          : out    vl_logic_vector(0 to 6);
        States_neg      : out    vl_logic_vector(0 to 6)
    );
end lab5circuit;
