library verilog;
use verilog.vl_types.all;
entity muxModified is
    port(
        f               : out    vl_logic;
        w0              : in     vl_logic;
        w1              : in     vl_logic;
        S1              : in     vl_logic;
        w2              : in     vl_logic;
        w3              : in     vl_logic;
        S2              : in     vl_logic
    );
end muxModified;
