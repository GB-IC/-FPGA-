module	tb_frame_gen();

reg		vga_clk		;
reg		sys_rst_n	;
reg		key_flag	;
wire	frame		;

initial begin
        vga_clk    = 1'b1;
        sys_rst_n <= 1'b0;
		key_flag<=1'b0;
        #20;
        sys_rst_n <= 1'b1;
		key_flag<=1'b1;
		#20;
		key_flag<=1'b0;
end

always  #20 vga_clk =   ~vga_clk;



frame_gen	frame_gen_inst
(
    .vga_clk    (vga_clk)	,   //输入工作时钟,频率25MHz
    .sys_rst_n  (sys_rst_n)	,   //输入复位信号,低电平有效
	.key_flag	(key_flag)	,

	.frame		(frame)	//一帧的信号

);


endmodule