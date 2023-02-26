library verilog;
use verilog.vl_types.all;
entity sdram_write is
    generic(
        TRCD_CLK        : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0);
        TRP_CLK         : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0);
        WR_IDLE         : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        WR_ACTIVE       : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        WR_TRCD         : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        WR_WRITE        : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        \WR_DATA\       : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi0);
        WR_PRE          : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi1);
        WR_TRP          : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1);
        \WR_END\        : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi0);
        NOP             : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1);
        ACTIVE          : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        WRITE           : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi0);
        B_STOP          : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi0);
        P_CHARGE        : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0)
    );
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        init_end        : in     vl_logic;
        wr_en           : in     vl_logic;
        wr_addr         : in     vl_logic_vector(23 downto 0);
        wr_data         : in     vl_logic_vector(15 downto 0);
        wr_burst_len    : in     vl_logic_vector(9 downto 0);
        wr_ack          : out    vl_logic;
        wr_end          : out    vl_logic;
        write_cmd       : out    vl_logic_vector(3 downto 0);
        write_ba        : out    vl_logic_vector(1 downto 0);
        write_addr      : out    vl_logic_vector(12 downto 0);
        wr_sdram_en     : out    vl_logic;
        wr_sdram_data   : out    vl_logic_vector(15 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of TRCD_CLK : constant is 1;
    attribute mti_svvh_generic_type of TRP_CLK : constant is 1;
    attribute mti_svvh_generic_type of WR_IDLE : constant is 1;
    attribute mti_svvh_generic_type of WR_ACTIVE : constant is 1;
    attribute mti_svvh_generic_type of WR_TRCD : constant is 1;
    attribute mti_svvh_generic_type of WR_WRITE : constant is 1;
    attribute mti_svvh_generic_type of \WR_DATA\ : constant is 1;
    attribute mti_svvh_generic_type of WR_PRE : constant is 1;
    attribute mti_svvh_generic_type of WR_TRP : constant is 1;
    attribute mti_svvh_generic_type of \WR_END\ : constant is 1;
    attribute mti_svvh_generic_type of NOP : constant is 1;
    attribute mti_svvh_generic_type of ACTIVE : constant is 1;
    attribute mti_svvh_generic_type of WRITE : constant is 1;
    attribute mti_svvh_generic_type of B_STOP : constant is 1;
    attribute mti_svvh_generic_type of P_CHARGE : constant is 1;
end sdram_write;
