set C_TypeInfoList {{ 
"matrixmul" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"a": [[], {"array": [ {"array": ["0", [3]]}, [3]]}] }, {"b": [[], {"array": [ {"array": ["1", [3]]}, [3]]}] }, {"res": [[], {"array": [ {"array": ["2", [3]]}, [3]]}] }],[],""], 
"0": [ "mat_a_t", {"typedef": [[[], {"scalar": "char"}],""]}], 
"2": [ "result_t", {"typedef": [[[], {"scalar": "short"}],""]}], 
"1": [ "mat_b_t", {"typedef": [[[], {"scalar": "char"}],""]}]
}}
set moduleName matrixmul
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {matrixmul}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_0 int 8 regular {array 3 { 1 3 } 1 1 }  }
	{ a_1 int 8 regular {array 3 { 1 3 } 1 1 }  }
	{ a_2 int 8 regular {array 3 { 1 3 } 1 1 }  }
	{ b_0 int 8 regular {array 3 { 1 1 } 1 1 }  }
	{ b_1 int 8 regular {array 3 { 1 1 } 1 1 }  }
	{ b_2 int 8 regular {array 3 { 1 1 } 1 1 }  }
	{ res int 16 regular {array 9 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "a","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "a_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "a","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "a_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "a","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "b_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "b","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "b_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "b","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "b_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "b","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "res", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "res","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 2,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_0_address0 sc_out sc_lv 2 signal 0 } 
	{ a_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_0_q0 sc_in sc_lv 8 signal 0 } 
	{ a_1_address0 sc_out sc_lv 2 signal 1 } 
	{ a_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_1_q0 sc_in sc_lv 8 signal 1 } 
	{ a_2_address0 sc_out sc_lv 2 signal 2 } 
	{ a_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ a_2_q0 sc_in sc_lv 8 signal 2 } 
	{ b_0_address0 sc_out sc_lv 2 signal 3 } 
	{ b_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ b_0_q0 sc_in sc_lv 8 signal 3 } 
	{ b_0_address1 sc_out sc_lv 2 signal 3 } 
	{ b_0_ce1 sc_out sc_logic 1 signal 3 } 
	{ b_0_q1 sc_in sc_lv 8 signal 3 } 
	{ b_1_address0 sc_out sc_lv 2 signal 4 } 
	{ b_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_1_q0 sc_in sc_lv 8 signal 4 } 
	{ b_1_address1 sc_out sc_lv 2 signal 4 } 
	{ b_1_ce1 sc_out sc_logic 1 signal 4 } 
	{ b_1_q1 sc_in sc_lv 8 signal 4 } 
	{ b_2_address0 sc_out sc_lv 2 signal 5 } 
	{ b_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ b_2_q0 sc_in sc_lv 8 signal 5 } 
	{ b_2_address1 sc_out sc_lv 2 signal 5 } 
	{ b_2_ce1 sc_out sc_logic 1 signal 5 } 
	{ b_2_q1 sc_in sc_lv 8 signal 5 } 
	{ res_address0 sc_out sc_lv 4 signal 6 } 
	{ res_ce0 sc_out sc_logic 1 signal 6 } 
	{ res_we0 sc_out sc_logic 1 signal 6 } 
	{ res_d0 sc_out sc_lv 16 signal 6 } 
	{ res_address1 sc_out sc_lv 4 signal 6 } 
	{ res_ce1 sc_out sc_logic 1 signal 6 } 
	{ res_we1 sc_out sc_logic 1 signal 6 } 
	{ res_d1 sc_out sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_0", "role": "address0" }} , 
 	{ "name": "a_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0", "role": "ce0" }} , 
 	{ "name": "a_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a_0", "role": "q0" }} , 
 	{ "name": "a_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_1", "role": "address0" }} , 
 	{ "name": "a_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1", "role": "ce0" }} , 
 	{ "name": "a_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a_1", "role": "q0" }} , 
 	{ "name": "a_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_2", "role": "address0" }} , 
 	{ "name": "a_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_2", "role": "ce0" }} , 
 	{ "name": "a_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a_2", "role": "q0" }} , 
 	{ "name": "b_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b_0", "role": "address0" }} , 
 	{ "name": "b_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_0", "role": "ce0" }} , 
 	{ "name": "b_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_0", "role": "q0" }} , 
 	{ "name": "b_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b_0", "role": "address1" }} , 
 	{ "name": "b_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_0", "role": "ce1" }} , 
 	{ "name": "b_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_0", "role": "q1" }} , 
 	{ "name": "b_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b_1", "role": "address0" }} , 
 	{ "name": "b_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "ce0" }} , 
 	{ "name": "b_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_1", "role": "q0" }} , 
 	{ "name": "b_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b_1", "role": "address1" }} , 
 	{ "name": "b_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "ce1" }} , 
 	{ "name": "b_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_1", "role": "q1" }} , 
 	{ "name": "b_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b_2", "role": "address0" }} , 
 	{ "name": "b_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_2", "role": "ce0" }} , 
 	{ "name": "b_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_2", "role": "q0" }} , 
 	{ "name": "b_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b_2", "role": "address1" }} , 
 	{ "name": "b_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_2", "role": "ce1" }} , 
 	{ "name": "b_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_2", "role": "q1" }} , 
 	{ "name": "res_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res", "role": "address0" }} , 
 	{ "name": "res_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res", "role": "ce0" }} , 
 	{ "name": "res_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res", "role": "we0" }} , 
 	{ "name": "res_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res", "role": "d0" }} , 
 	{ "name": "res_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "res", "role": "address1" }} , 
 	{ "name": "res_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res", "role": "ce1" }} , 
 	{ "name": "res_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res", "role": "we1" }} , 
 	{ "name": "res_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "matrixmul",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "a_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrixmul_mac_mulbkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrixmul_mac_mulbkb_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrixmul_mac_mulbkb_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrixmul_mac_mulcud_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrixmul_mac_mulcud_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrixmul_mac_mulcud_U6", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrixmul {
		a_0 {Type I LastRead 1 FirstWrite -1}
		a_1 {Type I LastRead 1 FirstWrite -1}
		a_2 {Type I LastRead 1 FirstWrite -1}
		b_0 {Type I LastRead 2 FirstWrite -1}
		b_1 {Type I LastRead 2 FirstWrite -1}
		b_2 {Type I LastRead 2 FirstWrite -1}
		res {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "11"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	a_0 { ap_memory {  { a_0_address0 mem_address 1 2 }  { a_0_ce0 mem_ce 1 1 }  { a_0_q0 mem_dout 0 8 } } }
	a_1 { ap_memory {  { a_1_address0 mem_address 1 2 }  { a_1_ce0 mem_ce 1 1 }  { a_1_q0 mem_dout 0 8 } } }
	a_2 { ap_memory {  { a_2_address0 mem_address 1 2 }  { a_2_ce0 mem_ce 1 1 }  { a_2_q0 mem_dout 0 8 } } }
	b_0 { ap_memory {  { b_0_address0 mem_address 1 2 }  { b_0_ce0 mem_ce 1 1 }  { b_0_q0 mem_dout 0 8 }  { b_0_address1 mem_address 1 2 }  { b_0_ce1 mem_ce 1 1 }  { b_0_q1 mem_dout 0 8 } } }
	b_1 { ap_memory {  { b_1_address0 mem_address 1 2 }  { b_1_ce0 mem_ce 1 1 }  { b_1_q0 mem_dout 0 8 }  { b_1_address1 mem_address 1 2 }  { b_1_ce1 mem_ce 1 1 }  { b_1_q1 mem_dout 0 8 } } }
	b_2 { ap_memory {  { b_2_address0 mem_address 1 2 }  { b_2_ce0 mem_ce 1 1 }  { b_2_q0 mem_dout 0 8 }  { b_2_address1 mem_address 1 2 }  { b_2_ce1 mem_ce 1 1 }  { b_2_q1 mem_dout 0 8 } } }
	res { ap_memory {  { res_address0 mem_address 1 4 }  { res_ce0 mem_ce 1 1 }  { res_we0 mem_we 1 1 }  { res_d0 mem_din 1 16 }  { res_address1 mem_address 1 4 }  { res_ce1 mem_ce 1 1 }  { res_we1 mem_we 1 1 }  { res_d1 mem_din 1 16 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
