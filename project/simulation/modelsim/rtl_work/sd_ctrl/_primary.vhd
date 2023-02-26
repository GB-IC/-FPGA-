library verilog;
use verilog.vl_types.all;
entity sd_ctrl is
    port(
        sys_clk         : in     vl_logic;
        sys_clk_shift   : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        sd_miso         : in     vl_logic;
        sd_clk          : out    vl_logic;
        sd_cs_n         : out    vl_logic;
        sd_mosi         : out    vl_logic;
        wr_en           : in     vl_logic;
        wr_addr         : in     vl_logic_vector(31 downto 0);
        wr_data         : in     vl_logic_vector(15 downto 0);
        wr_busy         : out    vl_logic;
        wr_req          : out    vl_logic;
        rd_en           : in     vl_logic;
        rd_addr         : in     vl_logic_vector(31 downto 0);
        rd_busy         : out    vl_logic;
        rd_data_en      : out    vl_logic;
        rd_data         : out    vl_logic_vector(15 downto 0);
        init_end        : out    vl_logic
    );
end sd_ctrl;
