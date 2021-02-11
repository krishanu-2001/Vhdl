onerror {exit -code 1}
vlib work
vlog -work work Half_Adder.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L arriaii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Half_Adder_vlg_vec_tst -voptargs="+acc"
vcd file -direction Half_Adder.msim.vcd
vcd add -internal Half_Adder_vlg_vec_tst/*
vcd add -internal Half_Adder_vlg_vec_tst/i1/*
run -all
quit -f
