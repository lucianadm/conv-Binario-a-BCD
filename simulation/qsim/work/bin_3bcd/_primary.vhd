library verilog;
use verilog.vl_types.all;
entity bin_3bcd is
    port(
        num_bin         : in     vl_logic_vector(11 downto 0);
        k0_bcd          : out    vl_logic_vector(3 downto 0);
        k1_bcd          : out    vl_logic_vector(3 downto 0);
        k2_bcd          : out    vl_logic_vector(3 downto 0)
    );
end bin_3bcd;
