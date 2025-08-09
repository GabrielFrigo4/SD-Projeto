transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {/home/anthony/Documents/UFABC/SD-Projeto/Quartus/VendingMachine/WorkPackages.vhd}
vcom -2008 -work work {/home/anthony/Documents/UFABC/SD-Projeto/Quartus/VendingMachine/DisplayDecimal.vhd}
vcom -2008 -work work {/home/anthony/Documents/UFABC/SD-Projeto/Quartus/VendingMachine/DisplayHexadecimal.vhd}
vcom -2008 -work work {/home/anthony/Documents/UFABC/SD-Projeto/Quartus/VendingMachine/Clock.vhd}
vcom -2008 -work work {/home/anthony/Documents/UFABC/SD-Projeto/Quartus/VendingMachine/Delay.vhd}
vcom -2008 -work work {/home/anthony/Documents/UFABC/SD-Projeto/Quartus/VendingMachine/VendingMachine.vhd}
vcom -2008 -work work {/home/anthony/Documents/UFABC/SD-Projeto/Quartus/VendingMachine/StateMachine.vhd}
vcom -2008 -work work {/home/anthony/Documents/UFABC/SD-Projeto/Quartus/VendingMachine/simulation/questa/VendingMachine.vht}

