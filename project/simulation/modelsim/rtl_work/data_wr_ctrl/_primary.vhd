library verilog;
use verilog.vl_types.all;
entity data_wr_ctrl is
    generic(
        IDLE            : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        WRITE           : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        \WAIT\          : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        IMG_SEC_ADDR0   : integer := 0;
        WR_NUM          : vl_logic_vector(0 to 1) := (Hi1, Hi0)
    );
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        wr_busy         : in     vl_logic;
        frame           : in     vl_logic;
        wr_en           : out    vl_logic;
        wr_addr         : out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of WRITE : constant is 1;
    attribute mti_svvh_generic_type of \WAIT\ : constant is 1;
    attribute mti_svvh_generic_type of IMG_SEC_ADDR0 : constant is 1;
    attribute mti_svvh_generic_type of WR_NUM : constant is 1;
end data_wr_ctrl;
