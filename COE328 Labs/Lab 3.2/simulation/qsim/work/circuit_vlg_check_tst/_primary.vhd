library verilog;
use verilog.vl_types.all;
entity circuit_vlg_check_tst is
    port(
        Cout            : in     vl_logic;
        display         : in     vl_logic_vector(0 to 6);
        neg_display     : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end circuit_vlg_check_tst;
