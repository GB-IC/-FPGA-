library verilog;
use verilog.vl_types.all;
entity ov5640_hdmi_1280x720 is
    generic(
        H_PIXEL         : integer := 1280;
        V_PIXEL         : integer := 720
    );
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        rx              : in     vl_logic;
        key_in          : in     vl_logic;
        ov5640_data     : in     vl_logic_vector(7 downto 0);
        ov5640_vsync    : in     vl_logic;
        ov5640_href     : in     vl_logic;
        ov5640_pclk     : in     vl_logic;
        ov5640_rst_n    : out    vl_logic;
        ov5640_pwdn     : out    vl_logic;
        sccb_scl        : out    vl_logic;
        sccb_sda        : inout  vl_logic;
        sdram_clk       : out    vl_logic;
        sdram_cke       : out    vl_logic;
        sdram_cs_n      : out    vl_logic;
        sdram_ras_n     : out    vl_logic;
        sdram_cas_n     : out    vl_logic;
        sdram_we_n      : out    vl_logic;
        sdram_dqm       : out    vl_logic_vector(1 downto 0);
        sdram_ba        : out    vl_logic_vector(1 downto 0);
        sdram_addr      : out    vl_logic_vector(12 downto 0);
        sdram_dq        : inout  vl_logic_vector(15 downto 0);
        tmds_clk_p      : out    vl_logic;
        tmds_clk_n      : out    vl_logic;
        tmds_data_p     : out    vl_logic_vector(2 downto 0);
        tmds_data_n     : out    vl_logic_vector(2 downto 0);
        tx              : out    vl_logic;
        sd_miso         : in     vl_logic;
        sd_clk          : out    vl_logic;
        sd_cs_n         : out    vl_logic;
        sd_mosi         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of H_PIXEL : constant is 1;
    attribute mti_svvh_generic_type of V_PIXEL : constant is 1;
end ov5640_hdmi_1280x720;
