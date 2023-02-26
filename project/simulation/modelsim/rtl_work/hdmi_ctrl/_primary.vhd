library verilog;
use verilog.vl_types.all;
entity hdmi_ctrl is
    port(
        clk_1x          : in     vl_logic;
        clk_5x          : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        rgb_blue        : in     vl_logic_vector(7 downto 0);
        rgb_green       : in     vl_logic_vector(7 downto 0);
        rgb_red         : in     vl_logic_vector(7 downto 0);
        hsync           : in     vl_logic;
        vsync           : in     vl_logic;
        de              : in     vl_logic;
        hdmi_clk_p      : out    vl_logic;
        hdmi_clk_n      : out    vl_logic;
        hdmi_r_p        : out    vl_logic;
        hdmi_r_n        : out    vl_logic;
        hdmi_g_p        : out    vl_logic;
        hdmi_g_n        : out    vl_logic;
        hdmi_b_p        : out    vl_logic;
        hdmi_b_n        : out    vl_logic
    );
end hdmi_ctrl;
