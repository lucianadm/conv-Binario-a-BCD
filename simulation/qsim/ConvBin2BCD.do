onerror {exit -code 1}
vlib work
vlog -work work ConvBin2BCD.vo
vlog -work work Waveform_BDC3digitos.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.bin_3bcd_vlg_vec_tst -voptargs="+acc"
vcd file -direction ConvBin2BCD.msim.vcd
vcd add -internal bin_3bcd_vlg_vec_tst/*
vcd add -internal bin_3bcd_vlg_vec_tst/i1/*
run -all
quit -f
