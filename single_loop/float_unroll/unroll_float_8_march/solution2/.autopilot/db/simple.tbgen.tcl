set C_TypeInfoList {{ 
"simple" : [[], {"return": [[], {"scalar": "float"}] }, [{"ExternC" : 0}], [ {"a": [[], {"array": [ {"scalar": "float"}, [8]]}] }, {"b": [[], {"array": [ {"scalar": "float"}, [8]]}] }, {"c": [[], {"array": [ {"scalar": "float"}, [8]]}] }],[],""]
}}
set moduleName simple
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {simple}
set C_modelType { float 32 }
set C_modelArgList {
	{ a_0 float 32 regular {pointer 0}  }
	{ a_1 float 32 regular {pointer 0}  }
	{ a_2 float 32 regular {pointer 0}  }
	{ a_3 float 32 regular {pointer 0}  }
	{ a_4 float 32 regular {pointer 0}  }
	{ a_5 float 32 regular {pointer 0}  }
	{ a_6 float 32 regular {pointer 0}  }
	{ a_7 float 32 regular {pointer 0}  }
	{ b_0 float 32 regular {pointer 0}  }
	{ b_1 float 32 regular {pointer 0}  }
	{ b_2 float 32 regular {pointer 0}  }
	{ b_3 float 32 regular {pointer 0}  }
	{ b_4 float 32 regular {pointer 0}  }
	{ b_5 float 32 regular {pointer 0}  }
	{ b_6 float 32 regular {pointer 0}  }
	{ b_7 float 32 regular {pointer 0}  }
	{ c_0 float 32 regular {pointer 1}  }
	{ c_1 float 32 regular {pointer 1}  }
	{ c_2 float 32 regular {pointer 1}  }
	{ c_3 float 32 regular {pointer 1}  }
	{ c_4 float 32 regular {pointer 1}  }
	{ c_5 float 32 regular {pointer 1}  }
	{ c_6 float 32 regular {pointer 1}  }
	{ c_7 float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "a_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "a_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "a_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "a_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}]} , 
 	{ "Name" : "a_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}]} , 
 	{ "Name" : "a_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]}]} , 
 	{ "Name" : "a_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]}]} , 
 	{ "Name" : "b_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "b_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "b_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "b_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "b_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}]} , 
 	{ "Name" : "b_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}]} , 
 	{ "Name" : "b_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]}]} , 
 	{ "Name" : "b_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]}]} , 
 	{ "Name" : "c_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "c","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "c_1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "c","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "c_2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "c","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "c_3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "c","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "c_4", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "c","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}]} , 
 	{ "Name" : "c_5", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "c","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}]} , 
 	{ "Name" : "c_6", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "c","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]}]} , 
 	{ "Name" : "c_7", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "c","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_0 sc_in sc_lv 32 signal 0 } 
	{ a_1 sc_in sc_lv 32 signal 1 } 
	{ a_2 sc_in sc_lv 32 signal 2 } 
	{ a_3 sc_in sc_lv 32 signal 3 } 
	{ a_4 sc_in sc_lv 32 signal 4 } 
	{ a_5 sc_in sc_lv 32 signal 5 } 
	{ a_6 sc_in sc_lv 32 signal 6 } 
	{ a_7 sc_in sc_lv 32 signal 7 } 
	{ b_0 sc_in sc_lv 32 signal 8 } 
	{ b_1 sc_in sc_lv 32 signal 9 } 
	{ b_2 sc_in sc_lv 32 signal 10 } 
	{ b_3 sc_in sc_lv 32 signal 11 } 
	{ b_4 sc_in sc_lv 32 signal 12 } 
	{ b_5 sc_in sc_lv 32 signal 13 } 
	{ b_6 sc_in sc_lv 32 signal 14 } 
	{ b_7 sc_in sc_lv 32 signal 15 } 
	{ c_0 sc_out sc_lv 32 signal 16 } 
	{ c_0_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ c_1 sc_out sc_lv 32 signal 17 } 
	{ c_1_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ c_2 sc_out sc_lv 32 signal 18 } 
	{ c_2_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ c_3 sc_out sc_lv 32 signal 19 } 
	{ c_3_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ c_4 sc_out sc_lv 32 signal 20 } 
	{ c_4_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ c_5 sc_out sc_lv 32 signal 21 } 
	{ c_5_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ c_6 sc_out sc_lv 32 signal 22 } 
	{ c_6_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ c_7 sc_out sc_lv 32 signal 23 } 
	{ c_7_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0", "role": "default" }} , 
 	{ "name": "a_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1", "role": "default" }} , 
 	{ "name": "a_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_2", "role": "default" }} , 
 	{ "name": "a_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_3", "role": "default" }} , 
 	{ "name": "a_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_4", "role": "default" }} , 
 	{ "name": "a_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_5", "role": "default" }} , 
 	{ "name": "a_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_6", "role": "default" }} , 
 	{ "name": "a_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_7", "role": "default" }} , 
 	{ "name": "b_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_0", "role": "default" }} , 
 	{ "name": "b_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_1", "role": "default" }} , 
 	{ "name": "b_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_2", "role": "default" }} , 
 	{ "name": "b_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_3", "role": "default" }} , 
 	{ "name": "b_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_4", "role": "default" }} , 
 	{ "name": "b_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_5", "role": "default" }} , 
 	{ "name": "b_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_6", "role": "default" }} , 
 	{ "name": "b_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_7", "role": "default" }} , 
 	{ "name": "c_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_0", "role": "default" }} , 
 	{ "name": "c_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_0", "role": "ap_vld" }} , 
 	{ "name": "c_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_1", "role": "default" }} , 
 	{ "name": "c_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_1", "role": "ap_vld" }} , 
 	{ "name": "c_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_2", "role": "default" }} , 
 	{ "name": "c_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_2", "role": "ap_vld" }} , 
 	{ "name": "c_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_3", "role": "default" }} , 
 	{ "name": "c_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_3", "role": "ap_vld" }} , 
 	{ "name": "c_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_4", "role": "default" }} , 
 	{ "name": "c_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_4", "role": "ap_vld" }} , 
 	{ "name": "c_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_5", "role": "default" }} , 
 	{ "name": "c_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_5", "role": "ap_vld" }} , 
 	{ "name": "c_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_6", "role": "default" }} , 
 	{ "name": "c_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_6", "role": "ap_vld" }} , 
 	{ "name": "c_7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_7", "role": "default" }} , 
 	{ "name": "c_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_7", "role": "ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "simple",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "a_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_7", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.simple_fadd_32ns_bkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.simple_fadd_32ns_bkb_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.simple_fadd_32ns_bkb_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.simple_fadd_32ns_bkb_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.simple_fadd_32ns_bkb_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.simple_fadd_32ns_bkb_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.simple_fadd_32ns_bkb_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.simple_fadd_32ns_bkb_U8", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	simple {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		a_2 {Type I LastRead 0 FirstWrite -1}
		a_3 {Type I LastRead 0 FirstWrite -1}
		a_4 {Type I LastRead 0 FirstWrite -1}
		a_5 {Type I LastRead 0 FirstWrite -1}
		a_6 {Type I LastRead 0 FirstWrite -1}
		a_7 {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		b_2 {Type I LastRead 0 FirstWrite -1}
		b_3 {Type I LastRead 0 FirstWrite -1}
		b_4 {Type I LastRead 0 FirstWrite -1}
		b_5 {Type I LastRead 0 FirstWrite -1}
		b_6 {Type I LastRead 0 FirstWrite -1}
		b_7 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 3}
		c_1 {Type O LastRead -1 FirstWrite 3}
		c_2 {Type O LastRead -1 FirstWrite 3}
		c_3 {Type O LastRead -1 FirstWrite 3}
		c_4 {Type O LastRead -1 FirstWrite 3}
		c_5 {Type O LastRead -1 FirstWrite 3}
		c_6 {Type O LastRead -1 FirstWrite 3}
		c_7 {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_0 { ap_none {  { a_0 in_data 0 32 } } }
	a_1 { ap_none {  { a_1 in_data 0 32 } } }
	a_2 { ap_none {  { a_2 in_data 0 32 } } }
	a_3 { ap_none {  { a_3 in_data 0 32 } } }
	a_4 { ap_none {  { a_4 in_data 0 32 } } }
	a_5 { ap_none {  { a_5 in_data 0 32 } } }
	a_6 { ap_none {  { a_6 in_data 0 32 } } }
	a_7 { ap_none {  { a_7 in_data 0 32 } } }
	b_0 { ap_none {  { b_0 in_data 0 32 } } }
	b_1 { ap_none {  { b_1 in_data 0 32 } } }
	b_2 { ap_none {  { b_2 in_data 0 32 } } }
	b_3 { ap_none {  { b_3 in_data 0 32 } } }
	b_4 { ap_none {  { b_4 in_data 0 32 } } }
	b_5 { ap_none {  { b_5 in_data 0 32 } } }
	b_6 { ap_none {  { b_6 in_data 0 32 } } }
	b_7 { ap_none {  { b_7 in_data 0 32 } } }
	c_0 { ap_vld {  { c_0 out_data 1 32 }  { c_0_ap_vld out_vld 1 1 } } }
	c_1 { ap_vld {  { c_1 out_data 1 32 }  { c_1_ap_vld out_vld 1 1 } } }
	c_2 { ap_vld {  { c_2 out_data 1 32 }  { c_2_ap_vld out_vld 1 1 } } }
	c_3 { ap_vld {  { c_3 out_data 1 32 }  { c_3_ap_vld out_vld 1 1 } } }
	c_4 { ap_vld {  { c_4 out_data 1 32 }  { c_4_ap_vld out_vld 1 1 } } }
	c_5 { ap_vld {  { c_5 out_data 1 32 }  { c_5_ap_vld out_vld 1 1 } } }
	c_6 { ap_vld {  { c_6 out_data 1 32 }  { c_6_ap_vld out_vld 1 1 } } }
	c_7 { ap_vld {  { c_7 out_data 1 32 }  { c_7_ap_vld out_vld 1 1 } } }
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
