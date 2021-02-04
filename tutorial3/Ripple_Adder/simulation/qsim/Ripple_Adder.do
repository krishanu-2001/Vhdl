onerror {exit -code 1}
vlib work
vlog -work work Ripple_Adder.vo
vlog -work work WaveformRippleAdder.vwf.vt
vsim -novopt -c -t 1ps -L arriaii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Ripple_Adder_vlg_vec_tst -voptargs="+acc"
vcd file -direction Ripple_Adder.msim.vcd
vcd add -internal Ripple_Adder_vlg_vec_tst/*
vcd add -internal Ripple_Adder_vlg_vec_tst/i1/*
run -all
quit -f
