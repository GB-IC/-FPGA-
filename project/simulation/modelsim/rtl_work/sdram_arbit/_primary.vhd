library verilog;
use verilog.vl_types.all;
entity sdram_arbit is
    generic(
        IDLE            : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi0, Hi1);
        ARBIT           : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi1, Hi0);
        AREF            : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi1, Hi0, Hi0);
        WRITE           : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi0, Hi0, Hi0);
        READ            : vl_logic_vector(0 to 4) := (Hi1, Hi0, Hi0, Hi0, Hi0);
        CMD_NOP         : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1)
    );
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        init_cmd        : in     vl_logic_vector(3 downto 0);
        init_end        : in     vl_logic;
        init_ba         : in     vl_logic_vector(1 downto 0);
        init_addr       : in     vl_logic_vector(12 downto 0);
        aref_req        : in     vl_logic;
        aref_end        : in     vl_logic;
        aref_cmd        : in     vl_logic_vector(3 downto 0);
        aref_ba         : in     vl_logic_vector(1 downto 0);
        aref_addr       : in     vl_logic_vector(12 downto 0);
        wr_req          : in     vl_logic;
        wr_ba           : in     vl_logic_vector(1 downto 0);
        wr_data         : in     vl_logic_vector(15 downto 0);
        wr_end          : in     vl_logic;
        wr_cmd          : in     vl_logic_vector(3 downto 0);
        wr_addr         : in     vl_logic_vector(12 downto 0);
        wr_sdram_en     : in     vl_logic;
        rd_req          : in     vl_logic;
        rd_end          : in     vl_logic;
        rd_cmd          : in     vl_logic_vector(3 downto 0);
        rd_addr         : in     vl_logic_vector(12 downto 0);
        rd_ba           : in     vl_logic_vector(1 downto 0);
        aref_en         : out    vl_logic;
        wr_en           : out    vl_logic;
        rd_en           : out    vl_logic;
        sdram_cke       : out    vl_logic;
        sdram_cs_n      : out    vl_logic;
        sdram_ras_n     : out    vl_logic;
        sdram_cas_n     : out    vl_logic;
        sdram_we_n      : out    vl_logic;
        sdram_ba        : out    vl_logic_vector(1 downto 0);
        sdram_addr      : out    vl_logic_vector(12 downto 0);
        sdram_dq        : inout  vl_logic_vector(15 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of ARBIT : constant is 1;
    attribute mti_svvh_generic_type of AREF : constant is 1;
    attribute mti_svvh_generic_type of WRITE : constant is 1;
    attribute mti_svvh_generic_type of READ : constant is 1;
    attribute mti_svvh_generic_type of CMD_NOP : constant is 1;
end sdram_arbit;
