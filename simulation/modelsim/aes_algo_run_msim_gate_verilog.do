transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {aes_algo.vo}

vlog -sv -work work +incdir+D:/altera/13.1/aes_algo {D:/altera/13.1/aes_algo/pt2sm_tb.sv}

vsim -t 1ps +transport_int_delays +transport_path_delays -L maxv_ver -L gate_work -L work -voptargs="+acc"  pt2sm_tb

add wave *
view structure
view signals
run -all
