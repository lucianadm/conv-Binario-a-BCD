library verilog;
use verilog.vl_types.all;
entity bin_bcd_original is
    port(
        num_bin         : in     vl_logic_vector(7 downto 0);
        k0_bcd          : out    vl_logic_vector(3 downto 0);
        k1_bcd          : out    vl_logic_vector(3 downto 0);
        k2_bcd          : out    vl_logic_vector(3 downto 0);
        num_bcd         : out    vl_logic_vector(10 downto 0)
    );
end bin_bcd_original;
