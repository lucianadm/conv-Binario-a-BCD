library verilog;
use verilog.vl_types.all;
entity bin_3bcd_vlg_sample_tst is
    port(
        num_bin         : in     vl_logic_vector(11 downto 0);
        sampler_tx      : out    vl_logic
    );
end bin_3bcd_vlg_sample_tst;
