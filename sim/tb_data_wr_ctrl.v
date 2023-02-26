module	tb_data_wr_ctrl();

reg			sys_clk		;
reg			sys_rst_n	;
reg			wr_busy		;
reg			frame	;
wire		wr_en	;
wire		wr_addr	;

initial begin
        sys_clk    = 1'b0;
        sys_rst_n <= 1'b0;
		wr_busy<=1'b1;
		frame<=1'b0;
        #20;
        sys_rst_n <= 1'b1;
		frame<=1'b0;
		wr_busy<=1'b1;
		#40;
		wr_busy<=1'b0;
		#140;
		frame<=1'b1;
		
end
//sys_clk先赋值0仿真正确,但sys_clk先赋值1仿真不正确
always  #10 sys_clk =   ~sys_clk;
always	#100	wr_busy=~wr_busy;
data_wr_ctrl	data_wr_ctrl_inst
(
  . sys_clk    (sys_clk) ,   //输入工作时钟,频率50MHz
  . sys_rst_n  (sys_rst_n) ,   //输入复位信号,低电平有效
  . wr_busy    (wr_busy) ,   //读操作忙信号
	.frame		(frame),
	
  . wr_en      (wr_en) ,   //数据读使能信号
  . wr_addr    (wr_addr)     //读数据扇区地址
);
endmodule