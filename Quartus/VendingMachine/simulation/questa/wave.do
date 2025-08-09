onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /vendingmachine_vhd_tst/i1/clk
add wave -noupdate /vendingmachine_vhd_tst/i1/present_state
add wave -noupdate /vendingmachine_vhd_tst/i1/candy_out
add wave -noupdate /vendingmachine_vhd_tst/i1/nickel_out
add wave -noupdate /vendingmachine_vhd_tst/i1/dime_out
add wave -noupdate /vendingmachine_vhd_tst/KEY
add wave -noupdate /vendingmachine_vhd_tst/SW
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6099 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 233
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {922 ns}
