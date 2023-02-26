library verilog;
use verilog.vl_types.all;
entity uart_rx is
    generic(
        UART_BPS        : integer := 9600;
        CLK_FREQ        : integer := 50000000
    );
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        rx              : in     vl_logic;
        po_data         : out    vl_logic_vector(7 downto 0);
        po_flag         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of UART_BPS : constant is 1;
    attribute mti_svvh_generic_type of CLK_FREQ : constant is 1;
end uart_rx;
