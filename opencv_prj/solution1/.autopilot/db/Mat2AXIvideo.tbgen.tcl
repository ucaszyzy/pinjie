set moduleName Mat2AXIvideo
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
set C_modelName {Mat2AXIvideo}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_rows_V_read int 32 regular  }
	{ img_cols_V_read int 32 regular  }
	{ img_data_stream_0_V double 64 regular {fifo 0 volatile }  }
	{ img_data_stream_1_V double 64 regular {fifo 0 volatile }  }
	{ AXI_video_strm_V_data_V int 128 regular {fifo 1 volatile }  }
	{ AXI_video_strm_V_keep_V int 16 regular {fifo 1 volatile }  }
	{ AXI_video_strm_V_strb_V int 16 regular {fifo 1 volatile }  }
	{ AXI_video_strm_V_user_V int 1 regular {fifo 1 volatile }  }
	{ AXI_video_strm_V_last_V int 1 regular {fifo 1 volatile }  }
	{ AXI_video_strm_V_id_V int 1 regular {fifo 1 volatile }  }
	{ AXI_video_strm_V_dest_V int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_rows_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "img_cols_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "img_data_stream_0_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "img_data_stream_1_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "AXI_video_strm_V_data_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_keep_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_strb_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_user_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_id_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_dest_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_rows_V_read sc_in sc_lv 32 signal 0 } 
	{ img_cols_V_read sc_in sc_lv 32 signal 1 } 
	{ img_data_stream_0_V_dout sc_in sc_lv 64 signal 2 } 
	{ img_data_stream_0_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ img_data_stream_0_V_read sc_out sc_logic 1 signal 2 } 
	{ img_data_stream_1_V_dout sc_in sc_lv 64 signal 3 } 
	{ img_data_stream_1_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ img_data_stream_1_V_read sc_out sc_logic 1 signal 3 } 
	{ AXI_video_strm_V_data_V_din sc_out sc_lv 128 signal 4 } 
	{ AXI_video_strm_V_data_V_full_n sc_in sc_logic 1 signal 4 } 
	{ AXI_video_strm_V_data_V_write sc_out sc_logic 1 signal 4 } 
	{ AXI_video_strm_V_keep_V_din sc_out sc_lv 16 signal 5 } 
	{ AXI_video_strm_V_keep_V_full_n sc_in sc_logic 1 signal 5 } 
	{ AXI_video_strm_V_keep_V_write sc_out sc_logic 1 signal 5 } 
	{ AXI_video_strm_V_strb_V_din sc_out sc_lv 16 signal 6 } 
	{ AXI_video_strm_V_strb_V_full_n sc_in sc_logic 1 signal 6 } 
	{ AXI_video_strm_V_strb_V_write sc_out sc_logic 1 signal 6 } 
	{ AXI_video_strm_V_user_V_din sc_out sc_lv 1 signal 7 } 
	{ AXI_video_strm_V_user_V_full_n sc_in sc_logic 1 signal 7 } 
	{ AXI_video_strm_V_user_V_write sc_out sc_logic 1 signal 7 } 
	{ AXI_video_strm_V_last_V_din sc_out sc_lv 1 signal 8 } 
	{ AXI_video_strm_V_last_V_full_n sc_in sc_logic 1 signal 8 } 
	{ AXI_video_strm_V_last_V_write sc_out sc_logic 1 signal 8 } 
	{ AXI_video_strm_V_id_V_din sc_out sc_lv 1 signal 9 } 
	{ AXI_video_strm_V_id_V_full_n sc_in sc_logic 1 signal 9 } 
	{ AXI_video_strm_V_id_V_write sc_out sc_logic 1 signal 9 } 
	{ AXI_video_strm_V_dest_V_din sc_out sc_lv 1 signal 10 } 
	{ AXI_video_strm_V_dest_V_full_n sc_in sc_logic 1 signal 10 } 
	{ AXI_video_strm_V_dest_V_write sc_out sc_logic 1 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_rows_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_rows_V_read", "role": "default" }} , 
 	{ "name": "img_cols_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_cols_V_read", "role": "default" }} , 
 	{ "name": "img_data_stream_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "img_data_stream_0_V", "role": "dout" }} , 
 	{ "name": "img_data_stream_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_stream_0_V", "role": "empty_n" }} , 
 	{ "name": "img_data_stream_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_stream_0_V", "role": "read" }} , 
 	{ "name": "img_data_stream_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "img_data_stream_1_V", "role": "dout" }} , 
 	{ "name": "img_data_stream_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_stream_1_V", "role": "empty_n" }} , 
 	{ "name": "img_data_stream_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_stream_1_V", "role": "read" }} , 
 	{ "name": "AXI_video_strm_V_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "AXI_video_strm_V_data_V", "role": "din" }} , 
 	{ "name": "AXI_video_strm_V_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_data_V", "role": "full_n" }} , 
 	{ "name": "AXI_video_strm_V_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_data_V", "role": "write" }} , 
 	{ "name": "AXI_video_strm_V_keep_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "AXI_video_strm_V_keep_V", "role": "din" }} , 
 	{ "name": "AXI_video_strm_V_keep_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_keep_V", "role": "full_n" }} , 
 	{ "name": "AXI_video_strm_V_keep_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_keep_V", "role": "write" }} , 
 	{ "name": "AXI_video_strm_V_strb_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "AXI_video_strm_V_strb_V", "role": "din" }} , 
 	{ "name": "AXI_video_strm_V_strb_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_strb_V", "role": "full_n" }} , 
 	{ "name": "AXI_video_strm_V_strb_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_strb_V", "role": "write" }} , 
 	{ "name": "AXI_video_strm_V_user_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_user_V", "role": "din" }} , 
 	{ "name": "AXI_video_strm_V_user_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_user_V", "role": "full_n" }} , 
 	{ "name": "AXI_video_strm_V_user_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_user_V", "role": "write" }} , 
 	{ "name": "AXI_video_strm_V_last_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_last_V", "role": "din" }} , 
 	{ "name": "AXI_video_strm_V_last_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_last_V", "role": "full_n" }} , 
 	{ "name": "AXI_video_strm_V_last_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_last_V", "role": "write" }} , 
 	{ "name": "AXI_video_strm_V_id_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_id_V", "role": "din" }} , 
 	{ "name": "AXI_video_strm_V_id_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_id_V", "role": "full_n" }} , 
 	{ "name": "AXI_video_strm_V_id_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_id_V", "role": "write" }} , 
 	{ "name": "AXI_video_strm_V_dest_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_dest_V", "role": "din" }} , 
 	{ "name": "AXI_video_strm_V_dest_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_dest_V", "role": "full_n" }} , 
 	{ "name": "AXI_video_strm_V_dest_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_dest_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
					{"Name" : "AXI_video_strm_V_dest_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
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
		AXI_video_strm_V_dest_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "2076841"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "2076841"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	img_rows_V_read { ap_none {  { img_rows_V_read in_data 0 32 } } }
	img_cols_V_read { ap_none {  { img_cols_V_read in_data 0 32 } } }
	img_data_stream_0_V { ap_fifo {  { img_data_stream_0_V_dout fifo_data 0 64 }  { img_data_stream_0_V_empty_n fifo_status 0 1 }  { img_data_stream_0_V_read fifo_update 1 1 } } }
	img_data_stream_1_V { ap_fifo {  { img_data_stream_1_V_dout fifo_data 0 64 }  { img_data_stream_1_V_empty_n fifo_status 0 1 }  { img_data_stream_1_V_read fifo_update 1 1 } } }
	AXI_video_strm_V_data_V { ap_fifo {  { AXI_video_strm_V_data_V_din fifo_data 1 128 }  { AXI_video_strm_V_data_V_full_n fifo_status 0 1 }  { AXI_video_strm_V_data_V_write fifo_update 1 1 } } }
	AXI_video_strm_V_keep_V { ap_fifo {  { AXI_video_strm_V_keep_V_din fifo_data 1 16 }  { AXI_video_strm_V_keep_V_full_n fifo_status 0 1 }  { AXI_video_strm_V_keep_V_write fifo_update 1 1 } } }
	AXI_video_strm_V_strb_V { ap_fifo {  { AXI_video_strm_V_strb_V_din fifo_data 1 16 }  { AXI_video_strm_V_strb_V_full_n fifo_status 0 1 }  { AXI_video_strm_V_strb_V_write fifo_update 1 1 } } }
	AXI_video_strm_V_user_V { ap_fifo {  { AXI_video_strm_V_user_V_din fifo_data 1 1 }  { AXI_video_strm_V_user_V_full_n fifo_status 0 1 }  { AXI_video_strm_V_user_V_write fifo_update 1 1 } } }
	AXI_video_strm_V_last_V { ap_fifo {  { AXI_video_strm_V_last_V_din fifo_data 1 1 }  { AXI_video_strm_V_last_V_full_n fifo_status 0 1 }  { AXI_video_strm_V_last_V_write fifo_update 1 1 } } }
	AXI_video_strm_V_id_V { ap_fifo {  { AXI_video_strm_V_id_V_din fifo_data 1 1 }  { AXI_video_strm_V_id_V_full_n fifo_status 0 1 }  { AXI_video_strm_V_id_V_write fifo_update 1 1 } } }
	AXI_video_strm_V_dest_V { ap_fifo {  { AXI_video_strm_V_dest_V_din fifo_data 1 1 }  { AXI_video_strm_V_dest_V_full_n fifo_status 0 1 }  { AXI_video_strm_V_dest_V_write fifo_update 1 1 } } }
}
