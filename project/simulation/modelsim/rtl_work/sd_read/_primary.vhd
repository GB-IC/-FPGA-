library verilog;
use verilog.vl_types.all;
entity sd_read is
    generic(
        IDLE            : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        SEND_CMD17      : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        CMD17_ACK       : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        \RD_DATA\       : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        RD_END          : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0);
        DATA_NUM        : vl_logic_vector(0 to 11) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        sys_clk         : in     vl_logic;
        sys_clk_shift   : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        miso            : in     vl_logic;
        rd_en           : in     vl_logic;
        rd_addr         : in     vl_logic_vector(31 downto 0);
        rd_busy         : out    vl_logic;
        rd_data_en      : out    vl_logic;
        rd_data         : out    vl_logic_vector(15 downto 0);
        cs_n            : out    vl_logic;
        mosi            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of SEND_CMD17 : constant is 1;
    attribute mti_svvh_generic_type of CMD17_ACK : constant is 1;
    attribute mti_svvh_generic_type of \RD_DATA\ : constant is 1;
    attribute mti_svvh_generic_type of RD_END : constant is 1;
    attribute mti_svvh_generic_type of DATA_NUM : constant is 1;
end sd_read;
