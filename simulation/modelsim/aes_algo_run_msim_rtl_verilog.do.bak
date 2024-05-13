transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/altera/13.1/aes_algo {D:/altera/13.1/aes_algo/pt2sm.sv}

vlog -sv -work work +incdir+D:/altera/13.1/aes_algo {D:/altera/13.1/aes_algo/pt2sm_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L maxv_ver -L rtl_work -L work -voptargs="+acc"  pt2sm_tb

add wave *
view structure
view signals
run -all
