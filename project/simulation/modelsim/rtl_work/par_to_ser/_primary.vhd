library verilog;
use verilog.vl_types.all;
entity par_to_ser is
    port(
        clk_5x          : in     vl_logic;
        par_data        : in     vl_logic_vector(9 downto 0);
        ser_data_p      : out    vl_logic;
        ser_data_n      : out    vl_logic
    );
end par_to_ser;
