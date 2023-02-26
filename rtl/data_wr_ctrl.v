module	data_wr_ctrl
(
    input   wire            sys_clk     ,   //输入工作时钟,频率50MHz
    input   wire            sys_rst_n   ,   //输入复位信号,低电平有效
    input   wire            wr_busy     ,   //写操作忙信号
	input	wire			frame		,

    output  reg             wr_en       ,   //数据写使能信号
    output  wire     [31:0]  wr_addr         //写数据扇区地址
);

//parameter define
parameter   IDLE    =   3'b001, //初始状态
            WRITE   =   3'b010, //写数据状态
            WAIT    =   3'b100; //等待状态
parameter   IMG_SEC_ADDR0   =   32'd0,  //图片扇区起始地址
            WR_NUM			=2'd2			;

//wire  define
wire            wr_busy_fall;  //写操作忙信号下降沿

//reg   define
reg             wr_busy_dly ;   //写操作忙信号打一拍




//wr_busy_dly:写操作忙信号打一拍
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        wr_busy_dly <=  1'b0;
    else
        wr_busy_dly <=  wr_busy;


//wr_busy_fall:写操作忙信号下降沿
assign  wr_busy_fall = ((wr_busy == 1'b0) && (wr_busy_dly == 1'b1))
                        ? 1'b1 : 1'b0;
		
//wr_en:数据写使能信号
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        wr_en   <=  1'b0;
    else    if(frame==1'b1)
	
		begin
			
			if(wr_busy_fall == 1'b1)
				wr_en   <=  1'b1;
			else
				wr_en   <=  1'b0;
			
		end
	
	else
		wr_en=1'b0;
//wr_addr:写数据扇区地址
assign	wr_addr=IMG_SEC_ADDR0;
endmodule