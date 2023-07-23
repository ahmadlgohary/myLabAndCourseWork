library verilog;
use verilog.vl_types.all;
entity circuit2_vlg_check_tst is
    port(
        display         : in     vl_logic_vector(0 to 6);
        neg_display     : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end circuit2_vlg_check_tst;
