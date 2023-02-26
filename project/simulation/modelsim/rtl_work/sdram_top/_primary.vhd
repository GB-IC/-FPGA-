library verilog;
use verilog.vl_types.all;
entity sdram_top is
    port(
        sys_clk         : in     vl_logic;
        clk_out         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        frame           : in     vl_logic;
        wr_fifo_wr_clk  : in     vl_logic;
        wr_fifo_wr_req  : in     vl_logic;
        wr_fifo_wr_data : in     vl_logic_vector(15 downto 0);
        sdram_wr_b_addr : in     vl_logic_vector(23 downto 0);
        sdram_wr_e_addr : in     vl_logic_vector(23 downto 0);
        wr_burst_len    : in     vl_logic_vector(9 downto 0);
        wr_rst          : in     vl_logic;
        rd_fifo_rd_clk  : in     vl_logic;
        rd_fifo_rd_req  : in     vl_logic;
        sdram_rd_b_addr : in     vl_logic_vector(23 downto 0);
        sdram_rd_e_addr : in     vl_logic_vector(23 downto 0);
        rd_burst_len    : in     vl_logic_vector(9 downto 0);
        rd_rst          : in     vl_logic;
        rd_fifo_rd_data : out    vl_logic_vector(15 downto 0);
        rd_fifo_num     : out    vl_logic_vector(9 downto 0);
        read_valid      : in     vl_logic;
        pingpang_en     : in     vl_logic;
        init_end        : out    vl_logic;
        sdram_clk       : out    vl_logic;
        sdram_cke       : out    vl_logic;
        sdram_cs_n      : out    vl_logic;
        sdram_ras_n     : out    vl_logic;
        sdram_cas_n     : out    vl_logic;
        sdram_we_n      : out    vl_logic;
        sdram_ba        : out    vl_logic_vector(1 downto 0);
        sdram_addr      : out    vl_logic_vector(12 downto 0);
        sdram_dqm       : out    vl_logic_vector(1 downto 0);
        sdram_dq        : inout  vl_logic_vector(15 downto 0)
    );
end sdram_top;
