library verilog;
use verilog.vl_types.all;
entity bin_bcd_vlg_check_tst is
    port(
        k0_bcd          : in     vl_logic_vector(3 downto 0);
        k1_bcd          : in     vl_logic_vector(3 downto 0);
        k2_bcd          : in     vl_logic_vector(3 downto 0);
        k3_bcd          : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end bin_bcd_vlg_check_tst;
