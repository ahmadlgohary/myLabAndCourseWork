library verilog;
use verilog.vl_types.all;
entity lab5circuit_vlg_check_tst is
    port(
        led             : in     vl_logic_vector(0 to 6);
        ledss           : in     vl_logic_vector(0 to 6);
        States          : in     vl_logic_vector(0 to 6);
        States_neg      : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end lab5circuit_vlg_check_tst;
