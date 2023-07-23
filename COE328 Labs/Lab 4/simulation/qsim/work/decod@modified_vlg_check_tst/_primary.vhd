library verilog;
use verilog.vl_types.all;
entity decodModified_vlg_check_tst is
    port(
        Y               : in     vl_logic_vector(0 to 7);
        sampler_rx      : in     vl_logic
    );
end decodModified_vlg_check_tst;
