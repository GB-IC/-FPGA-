`timescale  1ns/1ns

module	tb_uart_pro();
reg	sys_rst_n		;
reg	sys_clk			;
reg[7:0]	pi_data	;
reg	pi_flag			;

wire	[9:0]	x;
wire	[9:0]	y;
wire	[9:0]	w;
wire	[9:0]	h;

initial begin
        sys_clk    = 1'b1;
        sys_rst_n <= 1'b0;
        #20;
        sys_rst_n <= 1'b1;
end

//模拟发送7次数据，分别为0~7
initial begin
        pi_data <= 8'b0;
        pi_flag <= 1'b0;
        #200
        //发送数据0
        pi_data <= 8'd54;
        pi_flag <= 1'b1;
        #20
        pi_flag <= 1'b0;
//每发送1bit数据需要5208个时钟周期，一帧数据为10bit
//所以需要数据延时(5208*20*10)后再产生下一个数据
        #(5208*20*10);
        //发送数据1
        pi_data <= 8'd52;
        pi_flag <= 1'b1;
        #20
        pi_flag <= 1'b0;
        #(5208*20*10);
        //发送数据2
        pi_data <= 8'd48;
        pi_flag <= 1'b1;
        #20
        pi_flag <= 1'b0;
        #(5208*20*10);
        //发送数据3
        pi_data <= 8'd52;
        pi_flag <= 1'b1;
        #20
        pi_flag <= 1'b0;
        #(5208*20*10);
        //发送数据4
        pi_data <= 8'd56;
        pi_flag <= 1'b1;
        #20
        pi_flag <= 1'b0;
        #(5208*20*10);
        //发送数据5
        pi_data <= 8'd48;
        pi_flag <= 1'b1;
        #20
        pi_flag <= 1'b0;
        #(5208*20*10);
        //发送数据6
        pi_data <= 8'd48;
        pi_flag <= 1'b1;
        #20
        pi_flag <= 1'b0;
        #(5208*20*10);
        //发送数据7
        pi_data <= 8'd48;
        pi_flag <= 1'b1;
        #20
        pi_flag <= 1'b0;
		#(5208*20*10);
		//发送数据8
        pi_data <= 8'd49;
        pi_flag <= 1'b1;
        #20
        pi_flag <= 1'b0;
		#(5208*20*10);
		 //发送数据9
        pi_data <= 8'd50;
        pi_flag <= 1'b1;
        #20
        pi_flag <= 1'b0;
		#(5208*20*10);
		 //发送数据10
        pi_data <= 8'd51;
        pi_flag <= 1'b1;
        #20
        pi_flag <= 1'b0;
		#(5208*20*10);
		 //发送数据11
        pi_data <= 8'd52;
        pi_flag <= 1'b1;
        #20
        pi_flag <= 1'b0;
end

//sys_clk:每10ns电平翻转一次，产生一个50MHz的时钟信号
always #10 sys_clk = ~sys_clk;
uart_pro	tb_uart_pro
(
	.sys_rst_n(sys_rst_n)		,
	.sys_clk(sys_clk)			,
	.pi_data(pi_data)			,
	.pi_flag(pi_flag)			,
	
	.x(x),
	.y(y),
	.w(w),
	.h(h)
	
);
endmodule