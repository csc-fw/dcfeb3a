gui_open_window Wave
gui_sg_create cmp_dyn_phs_mmcm_group
gui_list_add_group -id Wave.1 {cmp_dyn_phs_mmcm_group}
gui_sg_addsignal -group cmp_dyn_phs_mmcm_group {cmp_dyn_phs_mmcm_tb.test_phase}
gui_set_radix -radix {ascii} -signals {cmp_dyn_phs_mmcm_tb.test_phase}
gui_sg_addsignal -group cmp_dyn_phs_mmcm_group {{Input_clocks}} -divider
gui_sg_addsignal -group cmp_dyn_phs_mmcm_group {cmp_dyn_phs_mmcm_tb.CLK_IN1}
gui_sg_addsignal -group cmp_dyn_phs_mmcm_group {{Output_clocks}} -divider
gui_sg_addsignal -group cmp_dyn_phs_mmcm_group {cmp_dyn_phs_mmcm_tb.dut.clk}
gui_list_expand -id Wave.1 cmp_dyn_phs_mmcm_tb.dut.clk
gui_sg_addsignal -group cmp_dyn_phs_mmcm_group {{Status_control}} -divider
gui_sg_addsignal -group cmp_dyn_phs_mmcm_group {cmp_dyn_phs_mmcm_tb.RESET}
gui_sg_addsignal -group cmp_dyn_phs_mmcm_group {cmp_dyn_phs_mmcm_tb.LOCKED}
gui_sg_addsignal -group cmp_dyn_phs_mmcm_group {{Counters}} -divider
gui_sg_addsignal -group cmp_dyn_phs_mmcm_group {cmp_dyn_phs_mmcm_tb.COUNT}
gui_sg_addsignal -group cmp_dyn_phs_mmcm_group {cmp_dyn_phs_mmcm_tb.dut.counter}
gui_list_expand -id Wave.1 cmp_dyn_phs_mmcm_tb.dut.counter
gui_zoom -window Wave.1 -full
