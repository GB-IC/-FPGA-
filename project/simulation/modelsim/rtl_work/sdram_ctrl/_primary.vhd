library verilog;
use verilog.vl_types.all;
entity sdram_ctrl is
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        sdram_wr_req    : in     vl_logic;
        sdram_wr_addr   : in     vl_logic_vector(23 downto 0);
        wr_burst_len    : in     vl_logic_vector(9 downto 0);
        sdram_data_in   : in     vl_logic_vector(15 downto 0);
        sdram_wr_ack    : out    vl_logic;
        sdram_rd_req    : in     vl_logic;
        sdram_rd_addr   : in     vl_logic_vector(23 downto 0);
        rd_burst_len    : in     vl_logic_vector(9 downto 0);
        sdram_data_out  : out    vl_logic_vector(15 downto 0);
        init_end        : out    vl_logic;
        sdram_rd_ack    : out    vl_logic;
        sdram_cke       : out    vl_logic;
        sdram_cs_n      : out    vl_logic;
        sdram_ras_n     : out    vl_logic;
        sdram_cas_n     : out    vl_logic;
        sdram_we_n      : out    vl_logic;
        sdram_ba        : out    vl_logic_vector(1 downto 0);
        sdram_addr      : out    vl_logic_vector(12 downto 0);
        sdram_dq        : inout  vl_logic_vector(15 downto 0)
    );
end sdram_ctrl;
