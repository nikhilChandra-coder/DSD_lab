transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/user/Downloads/lab6\ -\ Copy {/home/user/Downloads/lab6 - Copy/top.sv}
vlog -sv -work work +incdir+/home/user/Downloads/lab6\ -\ Copy {/home/user/Downloads/lab6 - Copy/ALU.sv}
vlog -sv -work work +incdir+/home/user/Downloads/lab6\ -\ Copy {/home/user/Downloads/lab6 - Copy/register_file.sv}
vlog -sv -work work +incdir+/home/user/Downloads/lab6\ -\ Copy {/home/user/Downloads/lab6 - Copy/display.sv}

vlog -sv -work work +incdir+/home/user/Downloads/lab6\ -\ Copy {/home/user/Downloads/lab6 - Copy/testbench_top.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  testbench_top

add wave *
view structure
view signals
run -all
