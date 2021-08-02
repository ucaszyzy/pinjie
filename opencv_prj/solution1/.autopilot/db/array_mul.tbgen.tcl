set C_TypeInfoList {{ 
"array_mul" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"img_src1_axi": [[], {"reference": "0"}] }, {"img_src2_axi": [[], {"reference": "0"}] }, {"img_result_axi": [[], {"reference": "0"}] }, {"rows": [[], {"scalar": "int"}] }, {"cols": [[], {"scalar": "int"}] }],[],""], 
"0": [ "AXI_STREAM", {"typedef": [[[],"1"],""]}], 
"1": [ "stream<ap_axiu<128, 1, 1, 1> >", {"hls_type": {"stream": [[[[],"2"]],"3"]}}], 
"2": [ "ap_axiu<128, 1, 1, 1>", {"struct": [[],[{"D":[[], {"scalar": { "int": 128}}]},{"U":[[], {"scalar": { "int": 1}}]},{"TI":[[], {"scalar": { "int": 1}}]},{"TD":[[], {"scalar": { "int": 1}}]}],[{ "data": [[], "4"]},{ "keep": [[], "5"]},{ "strb": [[], "5"]},{ "user": [[], "6"]},{ "last": [[], "6"]},{ "id": [[], "6"]},{ "dest": [[], "6"]}],""]}], 
"4": [ "ap_uint<128>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 128}}]],""]}}], 
"6": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"5": [ "ap_uint<16>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 16}}]],""]}}],
"3": ["hls", ""]
}}
set moduleName array_mul
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {array_mul}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_src1_axi_V_data_V int 128 regular {fifo 0 volatile }  }
	{ img_src1_axi_V_keep_V int 16 regular {fifo 0 volatile }  }
	{ img_src1_axi_V_strb_V int 16 regular {fifo 0 volatile }  }
	{ img_src1_axi_V_user_V int 1 regular {fifo 0 volatile }  }
	{ img_src1_axi_V_last_V int 1 regular {fifo 0 volatile }  }
	{ img_src1_axi_V_id_V int 1 regular {fifo 0 volatile }  }
	{ img_src1_axi_V_dest_V int 1 regular {fifo 0 volatile }  }
	{ img_src2_axi_V_data_V int 128 regular {fifo 0 volatile }  }
	{ img_src2_axi_V_keep_V int 16 regular {fifo 0 volatile }  }
	{ img_src2_axi_V_strb_V int 16 regular {fifo 0 volatile }  }
	{ img_src2_axi_V_user_V int 1 regular {fifo 0 volatile }  }
	{ img_src2_axi_V_last_V int 1 regular {fifo 0 volatile }  }
	{ img_src2_axi_V_id_V int 1 regular {fifo 0 volatile }  }
	{ img_src2_axi_V_dest_V int 1 regular {fifo 0 volatile }  }
	{ img_result_axi_V_data_V int 128 regular {fifo 1 volatile }  }
	{ img_result_axi_V_keep_V int 16 regular {fifo 1 volatile }  }
	{ img_result_axi_V_strb_V int 16 regular {fifo 1 volatile }  }
	{ img_result_axi_V_user_V int 1 regular {fifo 1 volatile }  }
	{ img_result_axi_V_last_V int 1 regular {fifo 1 volatile }  }
	{ img_result_axi_V_id_V int 1 regular {fifo 1 volatile }  }
	{ img_result_axi_V_dest_V int 1 regular {fifo 1 volatile }  }
	{ rows int 32 regular  }
	{ cols int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_src1_axi_V_data_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "img_src1_axi.V.data.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_src1_axi_V_keep_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "img_src1_axi.V.keep.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_src1_axi_V_strb_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "img_src1_axi.V.strb.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_src1_axi_V_user_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "img_src1_axi.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_src1_axi_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "img_src1_axi.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_src1_axi_V_id_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "img_src1_axi.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_src1_axi_V_dest_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "img_src1_axi.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_src2_axi_V_data_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "img_src2_axi.V.data.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_src2_axi_V_keep_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "img_src2_axi.V.keep.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_src2_axi_V_strb_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "img_src2_axi.V.strb.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_src2_axi_V_user_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "img_src2_axi.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_src2_axi_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "img_src2_axi.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_src2_axi_V_id_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "img_src2_axi.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_src2_axi_V_dest_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "img_src2_axi.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_result_axi_V_data_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "img_result_axi.V.data.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_result_axi_V_keep_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "img_result_axi.V.keep.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_result_axi_V_strb_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "img_result_axi.V.strb.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_result_axi_V_user_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "img_result_axi.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_result_axi_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "img_result_axi.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_result_axi_V_id_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "img_result_axi.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_result_axi_V_dest_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "img_result_axi.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "rows","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cols","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 71
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_src1_axi_V_data_V_dout sc_in sc_lv 128 signal 0 } 
	{ img_src1_axi_V_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ img_src1_axi_V_data_V_read sc_out sc_logic 1 signal 0 } 
	{ img_src1_axi_V_keep_V_dout sc_in sc_lv 16 signal 1 } 
	{ img_src1_axi_V_keep_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ img_src1_axi_V_keep_V_read sc_out sc_logic 1 signal 1 } 
	{ img_src1_axi_V_strb_V_dout sc_in sc_lv 16 signal 2 } 
	{ img_src1_axi_V_strb_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ img_src1_axi_V_strb_V_read sc_out sc_logic 1 signal 2 } 
	{ img_src1_axi_V_user_V_dout sc_in sc_lv 1 signal 3 } 
	{ img_src1_axi_V_user_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ img_src1_axi_V_user_V_read sc_out sc_logic 1 signal 3 } 
	{ img_src1_axi_V_last_V_dout sc_in sc_lv 1 signal 4 } 
	{ img_src1_axi_V_last_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ img_src1_axi_V_last_V_read sc_out sc_logic 1 signal 4 } 
	{ img_src1_axi_V_id_V_dout sc_in sc_lv 1 signal 5 } 
	{ img_src1_axi_V_id_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ img_src1_axi_V_id_V_read sc_out sc_logic 1 signal 5 } 
	{ img_src1_axi_V_dest_V_dout sc_in sc_lv 1 signal 6 } 
	{ img_src1_axi_V_dest_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ img_src1_axi_V_dest_V_read sc_out sc_logic 1 signal 6 } 
	{ img_src2_axi_V_data_V_dout sc_in sc_lv 128 signal 7 } 
	{ img_src2_axi_V_data_V_empty_n sc_in sc_logic 1 signal 7 } 
	{ img_src2_axi_V_data_V_read sc_out sc_logic 1 signal 7 } 
	{ img_src2_axi_V_keep_V_dout sc_in sc_lv 16 signal 8 } 
	{ img_src2_axi_V_keep_V_empty_n sc_in sc_logic 1 signal 8 } 
	{ img_src2_axi_V_keep_V_read sc_out sc_logic 1 signal 8 } 
	{ img_src2_axi_V_strb_V_dout sc_in sc_lv 16 signal 9 } 
	{ img_src2_axi_V_strb_V_empty_n sc_in sc_logic 1 signal 9 } 
	{ img_src2_axi_V_strb_V_read sc_out sc_logic 1 signal 9 } 
	{ img_src2_axi_V_user_V_dout sc_in sc_lv 1 signal 10 } 
	{ img_src2_axi_V_user_V_empty_n sc_in sc_logic 1 signal 10 } 
	{ img_src2_axi_V_user_V_read sc_out sc_logic 1 signal 10 } 
	{ img_src2_axi_V_last_V_dout sc_in sc_lv 1 signal 11 } 
	{ img_src2_axi_V_last_V_empty_n sc_in sc_logic 1 signal 11 } 
	{ img_src2_axi_V_last_V_read sc_out sc_logic 1 signal 11 } 
	{ img_src2_axi_V_id_V_dout sc_in sc_lv 1 signal 12 } 
	{ img_src2_axi_V_id_V_empty_n sc_in sc_logic 1 signal 12 } 
	{ img_src2_axi_V_id_V_read sc_out sc_logic 1 signal 12 } 
	{ img_src2_axi_V_dest_V_dout sc_in sc_lv 1 signal 13 } 
	{ img_src2_axi_V_dest_V_empty_n sc_in sc_logic 1 signal 13 } 
	{ img_src2_axi_V_dest_V_read sc_out sc_logic 1 signal 13 } 
	{ img_result_axi_V_data_V_din sc_out sc_lv 128 signal 14 } 
	{ img_result_axi_V_data_V_full_n sc_in sc_logic 1 signal 14 } 
	{ img_result_axi_V_data_V_write sc_out sc_logic 1 signal 14 } 
	{ img_result_axi_V_keep_V_din sc_out sc_lv 16 signal 15 } 
	{ img_result_axi_V_keep_V_full_n sc_in sc_logic 1 signal 15 } 
	{ img_result_axi_V_keep_V_write sc_out sc_logic 1 signal 15 } 
	{ img_result_axi_V_strb_V_din sc_out sc_lv 16 signal 16 } 
	{ img_result_axi_V_strb_V_full_n sc_in sc_logic 1 signal 16 } 
	{ img_result_axi_V_strb_V_write sc_out sc_logic 1 signal 16 } 
	{ img_result_axi_V_user_V_din sc_out sc_lv 1 signal 17 } 
	{ img_result_axi_V_user_V_full_n sc_in sc_logic 1 signal 17 } 
	{ img_result_axi_V_user_V_write sc_out sc_logic 1 signal 17 } 
	{ img_result_axi_V_last_V_din sc_out sc_lv 1 signal 18 } 
	{ img_result_axi_V_last_V_full_n sc_in sc_logic 1 signal 18 } 
	{ img_result_axi_V_last_V_write sc_out sc_logic 1 signal 18 } 
	{ img_result_axi_V_id_V_din sc_out sc_lv 1 signal 19 } 
	{ img_result_axi_V_id_V_full_n sc_in sc_logic 1 signal 19 } 
	{ img_result_axi_V_id_V_write sc_out sc_logic 1 signal 19 } 
	{ img_result_axi_V_dest_V_din sc_out sc_lv 1 signal 20 } 
	{ img_result_axi_V_dest_V_full_n sc_in sc_logic 1 signal 20 } 
	{ img_result_axi_V_dest_V_write sc_out sc_logic 1 signal 20 } 
	{ rows sc_in sc_lv 32 signal 21 } 
	{ cols sc_in sc_lv 32 signal 22 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_src1_axi_V_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "img_src1_axi_V_data_V", "role": "dout" }} , 
 	{ "name": "img_src1_axi_V_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src1_axi_V_data_V", "role": "empty_n" }} , 
 	{ "name": "img_src1_axi_V_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src1_axi_V_data_V", "role": "read" }} , 
 	{ "name": "img_src1_axi_V_keep_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_src1_axi_V_keep_V", "role": "dout" }} , 
 	{ "name": "img_src1_axi_V_keep_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src1_axi_V_keep_V", "role": "empty_n" }} , 
 	{ "name": "img_src1_axi_V_keep_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src1_axi_V_keep_V", "role": "read" }} , 
 	{ "name": "img_src1_axi_V_strb_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_src1_axi_V_strb_V", "role": "dout" }} , 
 	{ "name": "img_src1_axi_V_strb_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src1_axi_V_strb_V", "role": "empty_n" }} , 
 	{ "name": "img_src1_axi_V_strb_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src1_axi_V_strb_V", "role": "read" }} , 
 	{ "name": "img_src1_axi_V_user_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src1_axi_V_user_V", "role": "dout" }} , 
 	{ "name": "img_src1_axi_V_user_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src1_axi_V_user_V", "role": "empty_n" }} , 
 	{ "name": "img_src1_axi_V_user_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src1_axi_V_user_V", "role": "read" }} , 
 	{ "name": "img_src1_axi_V_last_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src1_axi_V_last_V", "role": "dout" }} , 
 	{ "name": "img_src1_axi_V_last_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src1_axi_V_last_V", "role": "empty_n" }} , 
 	{ "name": "img_src1_axi_V_last_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src1_axi_V_last_V", "role": "read" }} , 
 	{ "name": "img_src1_axi_V_id_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src1_axi_V_id_V", "role": "dout" }} , 
 	{ "name": "img_src1_axi_V_id_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src1_axi_V_id_V", "role": "empty_n" }} , 
 	{ "name": "img_src1_axi_V_id_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src1_axi_V_id_V", "role": "read" }} , 
 	{ "name": "img_src1_axi_V_dest_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src1_axi_V_dest_V", "role": "dout" }} , 
 	{ "name": "img_src1_axi_V_dest_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src1_axi_V_dest_V", "role": "empty_n" }} , 
 	{ "name": "img_src1_axi_V_dest_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src1_axi_V_dest_V", "role": "read" }} , 
 	{ "name": "img_src2_axi_V_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "img_src2_axi_V_data_V", "role": "dout" }} , 
 	{ "name": "img_src2_axi_V_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src2_axi_V_data_V", "role": "empty_n" }} , 
 	{ "name": "img_src2_axi_V_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src2_axi_V_data_V", "role": "read" }} , 
 	{ "name": "img_src2_axi_V_keep_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_src2_axi_V_keep_V", "role": "dout" }} , 
 	{ "name": "img_src2_axi_V_keep_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src2_axi_V_keep_V", "role": "empty_n" }} , 
 	{ "name": "img_src2_axi_V_keep_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src2_axi_V_keep_V", "role": "read" }} , 
 	{ "name": "img_src2_axi_V_strb_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_src2_axi_V_strb_V", "role": "dout" }} , 
 	{ "name": "img_src2_axi_V_strb_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src2_axi_V_strb_V", "role": "empty_n" }} , 
 	{ "name": "img_src2_axi_V_strb_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src2_axi_V_strb_V", "role": "read" }} , 
 	{ "name": "img_src2_axi_V_user_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src2_axi_V_user_V", "role": "dout" }} , 
 	{ "name": "img_src2_axi_V_user_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src2_axi_V_user_V", "role": "empty_n" }} , 
 	{ "name": "img_src2_axi_V_user_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src2_axi_V_user_V", "role": "read" }} , 
 	{ "name": "img_src2_axi_V_last_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src2_axi_V_last_V", "role": "dout" }} , 
 	{ "name": "img_src2_axi_V_last_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src2_axi_V_last_V", "role": "empty_n" }} , 
 	{ "name": "img_src2_axi_V_last_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src2_axi_V_last_V", "role": "read" }} , 
 	{ "name": "img_src2_axi_V_id_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src2_axi_V_id_V", "role": "dout" }} , 
 	{ "name": "img_src2_axi_V_id_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src2_axi_V_id_V", "role": "empty_n" }} , 
 	{ "name": "img_src2_axi_V_id_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src2_axi_V_id_V", "role": "read" }} , 
 	{ "name": "img_src2_axi_V_dest_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src2_axi_V_dest_V", "role": "dout" }} , 
 	{ "name": "img_src2_axi_V_dest_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src2_axi_V_dest_V", "role": "empty_n" }} , 
 	{ "name": "img_src2_axi_V_dest_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_src2_axi_V_dest_V", "role": "read" }} , 
 	{ "name": "img_result_axi_V_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "img_result_axi_V_data_V", "role": "din" }} , 
 	{ "name": "img_result_axi_V_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_result_axi_V_data_V", "role": "full_n" }} , 
 	{ "name": "img_result_axi_V_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_result_axi_V_data_V", "role": "write" }} , 
 	{ "name": "img_result_axi_V_keep_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_result_axi_V_keep_V", "role": "din" }} , 
 	{ "name": "img_result_axi_V_keep_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_result_axi_V_keep_V", "role": "full_n" }} , 
 	{ "name": "img_result_axi_V_keep_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_result_axi_V_keep_V", "role": "write" }} , 
 	{ "name": "img_result_axi_V_strb_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_result_axi_V_strb_V", "role": "din" }} , 
 	{ "name": "img_result_axi_V_strb_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_result_axi_V_strb_V", "role": "full_n" }} , 
 	{ "name": "img_result_axi_V_strb_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_result_axi_V_strb_V", "role": "write" }} , 
 	{ "name": "img_result_axi_V_user_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "img_result_axi_V_user_V", "role": "din" }} , 
 	{ "name": "img_result_axi_V_user_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_result_axi_V_user_V", "role": "full_n" }} , 
 	{ "name": "img_result_axi_V_user_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_result_axi_V_user_V", "role": "write" }} , 
 	{ "name": "img_result_axi_V_last_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "img_result_axi_V_last_V", "role": "din" }} , 
 	{ "name": "img_result_axi_V_last_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_result_axi_V_last_V", "role": "full_n" }} , 
 	{ "name": "img_result_axi_V_last_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_result_axi_V_last_V", "role": "write" }} , 
 	{ "name": "img_result_axi_V_id_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "img_result_axi_V_id_V", "role": "din" }} , 
 	{ "name": "img_result_axi_V_id_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_result_axi_V_id_V", "role": "full_n" }} , 
 	{ "name": "img_result_axi_V_id_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_result_axi_V_id_V", "role": "write" }} , 
 	{ "name": "img_result_axi_V_dest_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "img_result_axi_V_dest_V", "role": "din" }} , 
 	{ "name": "img_result_axi_V_dest_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_result_axi_V_dest_V", "role": "full_n" }} , 
 	{ "name": "img_result_axi_V_dest_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_result_axi_V_dest_V", "role": "write" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "6", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "array_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24", "EstimateLatencyMax" : "16652544",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AddWeighted_fu_268"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AddWeighted_fu_268"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Mul_fu_277"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Mul_fu_277"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Mul_fu_286"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Mul_fu_286"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AXIvideo2Mat_fu_295"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AXIvideo2Mat_fu_295"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Mat2AXIvideo_fu_326"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Split_fu_348"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Split_fu_348"}],
		"Port" : [
			{"Name" : "img_src1_axi_V_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2Mat_fu_295", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "img_src1_axi_V_keep_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2Mat_fu_295", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "img_src1_axi_V_strb_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2Mat_fu_295", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "img_src1_axi_V_user_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2Mat_fu_295", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "img_src1_axi_V_last_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2Mat_fu_295", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "img_src1_axi_V_id_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2Mat_fu_295", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "img_src1_axi_V_dest_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2Mat_fu_295", "Port" : "AXI_video_strm_V_dest_V"}]},
			{"Name" : "img_src2_axi_V_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2Mat_fu_295", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "img_src2_axi_V_keep_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2Mat_fu_295", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "img_src2_axi_V_strb_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2Mat_fu_295", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "img_src2_axi_V_user_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2Mat_fu_295", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "img_src2_axi_V_last_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2Mat_fu_295", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "img_src2_axi_V_id_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2Mat_fu_295", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "img_src2_axi_V_dest_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_AXIvideo2Mat_fu_295", "Port" : "AXI_video_strm_V_dest_V"}]},
			{"Name" : "img_result_axi_V_data_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_Mat2AXIvideo_fu_326", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "img_result_axi_V_keep_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_Mat2AXIvideo_fu_326", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "img_result_axi_V_strb_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_Mat2AXIvideo_fu_326", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "img_result_axi_V_user_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_Mat2AXIvideo_fu_326", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "img_result_axi_V_last_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_Mat2AXIvideo_fu_326", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "img_result_axi_V_id_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_Mat2AXIvideo_fu_326", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "img_result_axi_V_dest_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_Mat2AXIvideo_fu_326", "Port" : "AXI_video_strm_V_dest_V"}]},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_AddWeighted_fu_268", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "AddWeighted",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "2088721",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "src1_rows_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src1_cols_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src1_data_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "src1_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src2_data_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "src2_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AddWeighted_fu_268.array_mul_dadd_64cud_U25", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AddWeighted_fu_268.array_mul_dadd_64cud_U26", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Mul_fu_277", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "Mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "2084401",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "src1_rows_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src1_cols_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src1_data_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "src1_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src2_data_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "src2_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Mul_fu_277.array_mul_dmul_64bkb_U18", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Mul_fu_286", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "Mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "2084401",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "src1_rows_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src1_cols_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src1_data_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "src1_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src2_data_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "src2_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Mul_fu_286.array_mul_dmul_64bkb_U18", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_AXIvideo2Mat_fu_295", "Parent" : "0",
		"CDFG" : "AXIvideo2Mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "2080083",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_rows_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_cols_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_data_stream_0_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_1_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Mat2AXIvideo_fu_326", "Parent" : "0",
		"CDFG" : "Mat2AXIvideo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "2076841",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_rows_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_cols_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_data_stream_0_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_1_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_dest_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Split_fu_348", "Parent" : "0",
		"CDFG" : "Split",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "2076841",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "src_rows_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_cols_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "src_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "src_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst0_data_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst0_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst1_data_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst1_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img1_data_stream_0_s_fifo_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img1_data_stream_1_s_fifo_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img2_data_stream_0_s_fifo_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img2_data_stream_1_s_fifo_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img1_Re_data_stream_s_fifo_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img1_Im_data_stream_s_fifo_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img2_Re_data_stream_s_fifo_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img2_Im_data_stream_s_fifo_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_result_data_stre_fifo_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_result_data_stre_1_fifo_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_result1_data_str_fifo_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_result2_data_str_fifo_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_result3_data_str_fifo_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_result4_data_str_fifo_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_result5_data_str_fifo_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_result6_data_str_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	array_mul {
		img_src1_axi_V_data_V {Type I LastRead 7 FirstWrite -1}
		img_src1_axi_V_keep_V {Type I LastRead 7 FirstWrite -1}
		img_src1_axi_V_strb_V {Type I LastRead 7 FirstWrite -1}
		img_src1_axi_V_user_V {Type I LastRead 7 FirstWrite -1}
		img_src1_axi_V_last_V {Type I LastRead 7 FirstWrite -1}
		img_src1_axi_V_id_V {Type I LastRead 7 FirstWrite -1}
		img_src1_axi_V_dest_V {Type I LastRead 7 FirstWrite -1}
		img_src2_axi_V_data_V {Type I LastRead 7 FirstWrite -1}
		img_src2_axi_V_keep_V {Type I LastRead 7 FirstWrite -1}
		img_src2_axi_V_strb_V {Type I LastRead 7 FirstWrite -1}
		img_src2_axi_V_user_V {Type I LastRead 7 FirstWrite -1}
		img_src2_axi_V_last_V {Type I LastRead 7 FirstWrite -1}
		img_src2_axi_V_id_V {Type I LastRead 7 FirstWrite -1}
		img_src2_axi_V_dest_V {Type I LastRead 7 FirstWrite -1}
		img_result_axi_V_data_V {Type O LastRead -1 FirstWrite 3}
		img_result_axi_V_keep_V {Type O LastRead -1 FirstWrite 3}
		img_result_axi_V_strb_V {Type O LastRead -1 FirstWrite 3}
		img_result_axi_V_user_V {Type O LastRead -1 FirstWrite 3}
		img_result_axi_V_last_V {Type O LastRead -1 FirstWrite 3}
		img_result_axi_V_id_V {Type O LastRead -1 FirstWrite 3}
		img_result_axi_V_dest_V {Type O LastRead -1 FirstWrite 3}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}}
	AddWeighted {
		src1_rows_V_read {Type I LastRead 0 FirstWrite -1}
		src1_cols_V_read {Type I LastRead 0 FirstWrite -1}
		src1_data_stream_V {Type I LastRead 3 FirstWrite -1}
		src2_data_stream_V {Type I LastRead 3 FirstWrite -1}
		dst_data_stream_V {Type O LastRead -1 FirstWrite 14}}
	Mul {
		src1_rows_V_read {Type I LastRead 0 FirstWrite -1}
		src1_cols_V_read {Type I LastRead 0 FirstWrite -1}
		src1_data_stream_V {Type I LastRead 3 FirstWrite -1}
		src2_data_stream_V {Type I LastRead 3 FirstWrite -1}
		dst_data_stream_V {Type O LastRead -1 FirstWrite 10}}
	Mul {
		src1_rows_V_read {Type I LastRead 0 FirstWrite -1}
		src1_cols_V_read {Type I LastRead 0 FirstWrite -1}
		src1_data_stream_V {Type I LastRead 3 FirstWrite -1}
		src2_data_stream_V {Type I LastRead 3 FirstWrite -1}
		dst_data_stream_V {Type O LastRead -1 FirstWrite 10}}
	AXIvideo2Mat {
		AXI_video_strm_V_data_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_keep_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_strb_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_user_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_last_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_id_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_dest_V {Type I LastRead 7 FirstWrite -1}
		img_rows_V_read {Type I LastRead 0 FirstWrite -1}
		img_cols_V_read {Type I LastRead 0 FirstWrite -1}
		img_data_stream_0_V {Type O LastRead -1 FirstWrite 6}
		img_data_stream_1_V {Type O LastRead -1 FirstWrite 6}}
	Mat2AXIvideo {
		img_rows_V_read {Type I LastRead 0 FirstWrite -1}
		img_cols_V_read {Type I LastRead 0 FirstWrite -1}
		img_data_stream_0_V {Type I LastRead 3 FirstWrite -1}
		img_data_stream_1_V {Type I LastRead 3 FirstWrite -1}
		AXI_video_strm_V_data_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_keep_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_strb_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_user_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_last_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_id_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_dest_V {Type O LastRead -1 FirstWrite 3}}
	Split {
		src_rows_V_read {Type I LastRead 0 FirstWrite -1}
		src_cols_V_read {Type I LastRead 0 FirstWrite -1}
		src_data_stream_0_V {Type I LastRead 3 FirstWrite -1}
		src_data_stream_1_V {Type I LastRead 3 FirstWrite -1}
		dst0_data_stream_V {Type O LastRead -1 FirstWrite 3}
		dst1_data_stream_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24", "Max" : "16652544"}
	, {"Name" : "Interval", "Min" : "25", "Max" : "16652545"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	img_src1_axi_V_data_V { ap_fifo {  { img_src1_axi_V_data_V_dout fifo_data 0 128 }  { img_src1_axi_V_data_V_empty_n fifo_status 0 1 }  { img_src1_axi_V_data_V_read fifo_update 1 1 } } }
	img_src1_axi_V_keep_V { ap_fifo {  { img_src1_axi_V_keep_V_dout fifo_data 0 16 }  { img_src1_axi_V_keep_V_empty_n fifo_status 0 1 }  { img_src1_axi_V_keep_V_read fifo_update 1 1 } } }
	img_src1_axi_V_strb_V { ap_fifo {  { img_src1_axi_V_strb_V_dout fifo_data 0 16 }  { img_src1_axi_V_strb_V_empty_n fifo_status 0 1 }  { img_src1_axi_V_strb_V_read fifo_update 1 1 } } }
	img_src1_axi_V_user_V { ap_fifo {  { img_src1_axi_V_user_V_dout fifo_data 0 1 }  { img_src1_axi_V_user_V_empty_n fifo_status 0 1 }  { img_src1_axi_V_user_V_read fifo_update 1 1 } } }
	img_src1_axi_V_last_V { ap_fifo {  { img_src1_axi_V_last_V_dout fifo_data 0 1 }  { img_src1_axi_V_last_V_empty_n fifo_status 0 1 }  { img_src1_axi_V_last_V_read fifo_update 1 1 } } }
	img_src1_axi_V_id_V { ap_fifo {  { img_src1_axi_V_id_V_dout fifo_data 0 1 }  { img_src1_axi_V_id_V_empty_n fifo_status 0 1 }  { img_src1_axi_V_id_V_read fifo_update 1 1 } } }
	img_src1_axi_V_dest_V { ap_fifo {  { img_src1_axi_V_dest_V_dout fifo_data 0 1 }  { img_src1_axi_V_dest_V_empty_n fifo_status 0 1 }  { img_src1_axi_V_dest_V_read fifo_update 1 1 } } }
	img_src2_axi_V_data_V { ap_fifo {  { img_src2_axi_V_data_V_dout fifo_data 0 128 }  { img_src2_axi_V_data_V_empty_n fifo_status 0 1 }  { img_src2_axi_V_data_V_read fifo_update 1 1 } } }
	img_src2_axi_V_keep_V { ap_fifo {  { img_src2_axi_V_keep_V_dout fifo_data 0 16 }  { img_src2_axi_V_keep_V_empty_n fifo_status 0 1 }  { img_src2_axi_V_keep_V_read fifo_update 1 1 } } }
	img_src2_axi_V_strb_V { ap_fifo {  { img_src2_axi_V_strb_V_dout fifo_data 0 16 }  { img_src2_axi_V_strb_V_empty_n fifo_status 0 1 }  { img_src2_axi_V_strb_V_read fifo_update 1 1 } } }
	img_src2_axi_V_user_V { ap_fifo {  { img_src2_axi_V_user_V_dout fifo_data 0 1 }  { img_src2_axi_V_user_V_empty_n fifo_status 0 1 }  { img_src2_axi_V_user_V_read fifo_update 1 1 } } }
	img_src2_axi_V_last_V { ap_fifo {  { img_src2_axi_V_last_V_dout fifo_data 0 1 }  { img_src2_axi_V_last_V_empty_n fifo_status 0 1 }  { img_src2_axi_V_last_V_read fifo_update 1 1 } } }
	img_src2_axi_V_id_V { ap_fifo {  { img_src2_axi_V_id_V_dout fifo_data 0 1 }  { img_src2_axi_V_id_V_empty_n fifo_status 0 1 }  { img_src2_axi_V_id_V_read fifo_update 1 1 } } }
	img_src2_axi_V_dest_V { ap_fifo {  { img_src2_axi_V_dest_V_dout fifo_data 0 1 }  { img_src2_axi_V_dest_V_empty_n fifo_status 0 1 }  { img_src2_axi_V_dest_V_read fifo_update 1 1 } } }
	img_result_axi_V_data_V { ap_fifo {  { img_result_axi_V_data_V_din fifo_data 1 128 }  { img_result_axi_V_data_V_full_n fifo_status 0 1 }  { img_result_axi_V_data_V_write fifo_update 1 1 } } }
	img_result_axi_V_keep_V { ap_fifo {  { img_result_axi_V_keep_V_din fifo_data 1 16 }  { img_result_axi_V_keep_V_full_n fifo_status 0 1 }  { img_result_axi_V_keep_V_write fifo_update 1 1 } } }
	img_result_axi_V_strb_V { ap_fifo {  { img_result_axi_V_strb_V_din fifo_data 1 16 }  { img_result_axi_V_strb_V_full_n fifo_status 0 1 }  { img_result_axi_V_strb_V_write fifo_update 1 1 } } }
	img_result_axi_V_user_V { ap_fifo {  { img_result_axi_V_user_V_din fifo_data 1 1 }  { img_result_axi_V_user_V_full_n fifo_status 0 1 }  { img_result_axi_V_user_V_write fifo_update 1 1 } } }
	img_result_axi_V_last_V { ap_fifo {  { img_result_axi_V_last_V_din fifo_data 1 1 }  { img_result_axi_V_last_V_full_n fifo_status 0 1 }  { img_result_axi_V_last_V_write fifo_update 1 1 } } }
	img_result_axi_V_id_V { ap_fifo {  { img_result_axi_V_id_V_din fifo_data 1 1 }  { img_result_axi_V_id_V_full_n fifo_status 0 1 }  { img_result_axi_V_id_V_write fifo_update 1 1 } } }
	img_result_axi_V_dest_V { ap_fifo {  { img_result_axi_V_dest_V_din fifo_data 1 1 }  { img_result_axi_V_dest_V_full_n fifo_status 0 1 }  { img_result_axi_V_dest_V_write fifo_update 1 1 } } }
	rows { ap_none {  { rows in_data 0 32 } } }
	cols { ap_none {  { cols in_data 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	img_src1_axi_V_data_V { fifo_read 1 no_conditional }
	img_src1_axi_V_keep_V { fifo_read 1 no_conditional }
	img_src1_axi_V_strb_V { fifo_read 1 no_conditional }
	img_src1_axi_V_user_V { fifo_read 1 no_conditional }
	img_src1_axi_V_last_V { fifo_read 1 no_conditional }
	img_src1_axi_V_id_V { fifo_read 1 no_conditional }
	img_src1_axi_V_dest_V { fifo_read 1 no_conditional }
	img_src2_axi_V_data_V { fifo_read 1 no_conditional }
	img_src2_axi_V_keep_V { fifo_read 1 no_conditional }
	img_src2_axi_V_strb_V { fifo_read 1 no_conditional }
	img_src2_axi_V_user_V { fifo_read 1 no_conditional }
	img_src2_axi_V_last_V { fifo_read 1 no_conditional }
	img_src2_axi_V_id_V { fifo_read 1 no_conditional }
	img_src2_axi_V_dest_V { fifo_read 1 no_conditional }
	img_result_axi_V_data_V { fifo_write 1 no_conditional }
	img_result_axi_V_keep_V { fifo_write 1 no_conditional }
	img_result_axi_V_strb_V { fifo_write 1 no_conditional }
	img_result_axi_V_user_V { fifo_write 1 no_conditional }
	img_result_axi_V_last_V { fifo_write 1 no_conditional }
	img_result_axi_V_id_V { fifo_write 1 no_conditional }
	img_result_axi_V_dest_V { fifo_write 1 no_conditional }
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
