library verilog;
use verilog.vl_types.all;
entity bin_bcd_original_vlg_check_tst is
    port(
        k0_bcd          : in     vl_logic_vector(3 downto 0);
        k1_bcd          : in     vl_logic_vector(3 downto 0);
        k2_bcd          : in     vl_logic_vector(3 downto 0);
        num_bcd         : in     vl_logic_vector(10 downto 0);
        sampler_rx      : in     vl_logic
    );
end bin_bcd_original_vlg_check_tst;
