onerror {exit -code 1}
vlib work
vlog -work work Tutorial4.vo
vlog -work work Waveformt4.vwf.vt
vsim -novopt -c -t 1ps -L arriaii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Tutorial4_vlg_vec_tst -voptargs="+acc"
vcd file -direction Tutorial4.msim.vcd
vcd add -internal Tutorial4_vlg_vec_tst/*
vcd add -internal Tutorial4_vlg_vec_tst/i1/*
run -all
quit -f
