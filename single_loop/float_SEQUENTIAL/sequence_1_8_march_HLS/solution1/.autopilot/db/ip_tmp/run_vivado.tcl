create_project prj -part xc7a35tcpg236-2 -force
set_property target_language vhdl [current_project]
set vivado_ver [version -short]
source "/opt/Xilinx/Vivado_HLS/2017.2/bin/sequence_1_8_march/solution1/syn/vhdl/simple_ap_fadd_3_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips simple_ap_fadd_3_full_dsp_32]]
}
