transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Projects/aes_hardware_implementation {D:/Projects/aes_hardware_implementation/pt2sm.sv}
vlog -sv -work work +incdir+D:/Projects/aes_hardware_implementation {D:/Projects/aes_hardware_implementation/subBytes.sv}
vlog -sv -work work +incdir+D:/Projects/aes_hardware_implementation {D:/Projects/aes_hardware_implementation/mixColumns.sv}
vlog -sv -work work +incdir+D:/Projects/aes_hardware_implementation {D:/Projects/aes_hardware_implementation/addRoundKey.sv}
vlog -sv -work work +incdir+D:/Projects/aes_hardware_implementation {D:/Projects/aes_hardware_implementation/roundKeyGenerator.sv}
vlog -sv -work work +incdir+D:/Projects/aes_hardware_implementation {D:/Projects/aes_hardware_implementation/shiftRows.sv}
vlog -sv -work work +incdir+D:/Projects/aes_hardware_implementation {D:/Projects/aes_hardware_implementation/initialRound.sv}
vlog -sv -work work +incdir+D:/Projects/aes_hardware_implementation {D:/Projects/aes_hardware_implementation/round.sv}
vlog -sv -work work +incdir+D:/Projects/aes_hardware_implementation {D:/Projects/aes_hardware_implementation/finalRound.sv}
vlog -sv -work work +incdir+D:/Projects/aes_hardware_implementation {D:/Projects/aes_hardware_implementation/aes_top.sv}

vlog -sv -work work +incdir+D:/Projects/aes_hardware_implementation {D:/Projects/aes_hardware_implementation/aes_testbench.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L maxv_ver -L rtl_work -L work -voptargs="+acc"  aes_top

add wave *
view structure
view signals
run -all
