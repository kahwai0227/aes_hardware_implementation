transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Projects/aes_hardware_implementation {D:/Projects/aes_hardware_implementation/mixColumns.sv}

