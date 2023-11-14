library verilog;
use verilog.vl_types.all;
entity bin_bcd_original_vlg_sample_tst is
    port(
        num_bin         : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end bin_bcd_original_vlg_sample_tst;
