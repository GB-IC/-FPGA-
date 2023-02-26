transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {d:/intelfpga/18.0/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/lpm_ver
vmap lpm_ver ./verilog_libs/lpm_ver
vlog -vlog01compat -work lpm_ver {d:/intelfpga/18.0/quartus/eda/sim_lib/220model.v}

vlib verilog_libs/sgate_ver
vmap sgate_ver ./verilog_libs/sgate_ver
vlog -vlog01compat -work sgate_ver {d:/intelfpga/18.0/quartus/eda/sim_lib/sgate.v}

vlib verilog_libs/altera_mf_ver
vmap altera_mf_ver ./verilog_libs/altera_mf_ver
vlog -vlog01compat -work altera_mf_ver {d:/intelfpga/18.0/quartus/eda/sim_lib/altera_mf.v}

vlib verilog_libs/altera_lnsim_ver
vmap altera_lnsim_ver ./verilog_libs/altera_lnsim_ver
vlog -sv -work altera_lnsim_ver {d:/intelfpga/18.0/quartus/eda/sim_lib/altera_lnsim.sv}

vlib verilog_libs/cycloneive_ver
vmap cycloneive_ver ./verilog_libs/cycloneive_ver
vlog -vlog01compat -work cycloneive_ver {d:/intelfpga/18.0/quartus/eda/sim_lib/cycloneive_atoms.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/data_wr_ctrl.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/key_filter.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/frame_gen.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/SD {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/SD/sd_write.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/SD {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/SD/sd_read.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/SD {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/SD/sd_init.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/SD {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/SD/sd_ctrl.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/uart_tx.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/uart_rx.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/uart_pro.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/vga_ctrl.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/ov5640_hdmi_1280x720.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/sdram {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/sdram/sdram_write.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/sdram {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/sdram/sdram_top.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/sdram {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/sdram/sdram_read.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/sdram {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/sdram/sdram_init.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/sdram {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/sdram/sdram_ctrl.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/sdram {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/sdram/sdram_arbit.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/sdram {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/sdram/sdram_a_ref.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/sdram {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/sdram/fifo_ctrl.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/ov5640 {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/ov5640/ov5640_top.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/ov5640 {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/ov5640/ov5640_data.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/ov5640 {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/ov5640/ov5640_cfg.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/ov5640 {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/ov5640/i2c_ctrl.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/hdmi {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/hdmi/par_to_ser.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/hdmi {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/hdmi/hdmi_ctrl.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/hdmi {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/rtl/hdmi/encode.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/project/ip_core/fifo_data {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/project/ip_core/fifo_data/fifo_data.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/project/ip_core/ddio_out {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/project/ip_core/ddio_out/ddio_out.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/project/ip_core/clk_gen {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/project/ip_core/clk_gen/clk_gen.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/project/ip_core/clk_hdmi {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/project/ip_core/clk_hdmi/clk_hdmi.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/project/db {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/project/db/clk_gen_altpll.v}
vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/project/db {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/project/db/clk_hdmi_altpll.v}

vlog -vlog01compat -work work +incdir+C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/project/../sim {C:/Users/Legion/Desktop/ov5640_hdmi_1280x720/project/../sim/tb_uart_pro.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_uart_pro

add wave *
view structure
view signals
run 1 us
