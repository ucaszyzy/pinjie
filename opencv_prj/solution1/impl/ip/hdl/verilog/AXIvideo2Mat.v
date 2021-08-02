// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module AXIvideo2Mat (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        AXI_video_strm_V_data_V_dout,
        AXI_video_strm_V_data_V_empty_n,
        AXI_video_strm_V_data_V_read,
        AXI_video_strm_V_keep_V_dout,
        AXI_video_strm_V_keep_V_empty_n,
        AXI_video_strm_V_keep_V_read,
        AXI_video_strm_V_strb_V_dout,
        AXI_video_strm_V_strb_V_empty_n,
        AXI_video_strm_V_strb_V_read,
        AXI_video_strm_V_user_V_dout,
        AXI_video_strm_V_user_V_empty_n,
        AXI_video_strm_V_user_V_read,
        AXI_video_strm_V_last_V_dout,
        AXI_video_strm_V_last_V_empty_n,
        AXI_video_strm_V_last_V_read,
        AXI_video_strm_V_id_V_dout,
        AXI_video_strm_V_id_V_empty_n,
        AXI_video_strm_V_id_V_read,
        AXI_video_strm_V_dest_V_dout,
        AXI_video_strm_V_dest_V_empty_n,
        AXI_video_strm_V_dest_V_read,
        img_rows_V_read,
        img_cols_V_read,
        img_data_stream_0_V_din,
        img_data_stream_0_V_full_n,
        img_data_stream_0_V_write,
        img_data_stream_1_V_din,
        img_data_stream_1_V_full_n,
        img_data_stream_1_V_write
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_pp1_stage0 = 8'd16;
parameter    ap_ST_fsm_state8 = 8'd32;
parameter    ap_ST_fsm_state9 = 8'd64;
parameter    ap_ST_fsm_state10 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [127:0] AXI_video_strm_V_data_V_dout;
input   AXI_video_strm_V_data_V_empty_n;
output   AXI_video_strm_V_data_V_read;
input  [15:0] AXI_video_strm_V_keep_V_dout;
input   AXI_video_strm_V_keep_V_empty_n;
output   AXI_video_strm_V_keep_V_read;
input  [15:0] AXI_video_strm_V_strb_V_dout;
input   AXI_video_strm_V_strb_V_empty_n;
output   AXI_video_strm_V_strb_V_read;
input  [0:0] AXI_video_strm_V_user_V_dout;
input   AXI_video_strm_V_user_V_empty_n;
output   AXI_video_strm_V_user_V_read;
input  [0:0] AXI_video_strm_V_last_V_dout;
input   AXI_video_strm_V_last_V_empty_n;
output   AXI_video_strm_V_last_V_read;
input  [0:0] AXI_video_strm_V_id_V_dout;
input   AXI_video_strm_V_id_V_empty_n;
output   AXI_video_strm_V_id_V_read;
input  [0:0] AXI_video_strm_V_dest_V_dout;
input   AXI_video_strm_V_dest_V_empty_n;
output   AXI_video_strm_V_dest_V_read;
input  [31:0] img_rows_V_read;
input  [31:0] img_cols_V_read;
output  [63:0] img_data_stream_0_V_din;
input   img_data_stream_0_V_full_n;
output   img_data_stream_0_V_write;
output  [63:0] img_data_stream_1_V_din;
input   img_data_stream_1_V_full_n;
output   img_data_stream_1_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg img_data_stream_0_V_write;
reg img_data_stream_1_V_write;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    AXI_video_strm_V_data_V_blk_n;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp1_stage0;
reg   [0:0] exitcond_reg_379;
wire   [0:0] brmerge_fu_307_p2;
wire    ap_CS_fsm_state9;
wire   [0:0] ap_phi_mux_eol_2_phi_fu_256_p4;
reg    AXI_video_strm_V_keep_V_blk_n;
reg    AXI_video_strm_V_strb_V_blk_n;
reg    AXI_video_strm_V_user_V_blk_n;
reg    AXI_video_strm_V_last_V_blk_n;
reg    AXI_video_strm_V_id_V_blk_n;
reg    AXI_video_strm_V_dest_V_blk_n;
reg    img_data_stream_0_V_blk_n;
reg    ap_enable_reg_pp1_iter2;
reg   [0:0] exitcond_reg_379_pp1_iter1_reg;
reg    img_data_stream_1_V_blk_n;
reg   [31:0] t_V_6_reg_159;
reg   [0:0] eol_1_reg_170;
reg   [127:0] axi_data_V_1_reg_181;
reg   [0:0] eol_reg_192;
reg   [0:0] axi_last_V_2_reg_204;
reg   [127:0] p_Val2_s_reg_217;
reg   [127:0] tmp_data_V_reg_350;
wire    AXI_video_strm_V_id_V0_status;
reg   [0:0] tmp_last_V_reg_358;
wire   [0:0] exitcond6_fu_282_p2;
wire    ap_CS_fsm_state4;
wire   [31:0] i_V_fu_287_p2;
reg   [31:0] i_V_reg_374;
wire   [0:0] exitcond_fu_293_p2;
wire    ap_block_state5_pp1_stage0_iter0;
reg    ap_predicate_op58_read_state6;
reg    ap_block_state6_pp1_stage0_iter1;
reg    ap_block_state7_pp1_stage0_iter2;
reg    ap_block_pp1_stage0_11001;
wire   [31:0] j_V_fu_298_p2;
reg    ap_enable_reg_pp1_iter0;
wire   [63:0] p_Result_s_fu_313_p1;
reg   [63:0] p_Result_s_reg_392;
reg   [63:0] p_Result_1_reg_397;
reg    ap_block_state9;
reg    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter1_state6;
reg   [0:0] axi_last_V_3_reg_229;
reg   [0:0] axi_last_V1_reg_128;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state3;
reg   [127:0] axi_data_V_3_reg_241;
reg   [127:0] axi_data_V1_reg_138;
reg   [31:0] t_V_reg_148;
reg   [0:0] ap_phi_mux_eol_1_phi_fu_173_p4;
reg   [127:0] ap_phi_mux_axi_data_V_1_phi_fu_184_p4;
reg   [0:0] ap_phi_mux_eol_phi_fu_196_p4;
wire   [0:0] ap_phi_reg_pp1_iter1_axi_last_V_2_reg_204;
reg   [127:0] ap_phi_mux_p_Val2_s_phi_fu_221_p4;
wire   [127:0] ap_phi_reg_pp1_iter1_p_Val2_s_reg_217;
wire    ap_CS_fsm_state8;
reg   [0:0] eol_2_reg_253;
reg    AXI_video_strm_V_id_V0_update;
reg    ap_block_pp1_stage0_01001;
reg   [0:0] sof_1_fu_80;
wire   [0:0] tmp_user_V_fu_273_p1;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
reg    ap_condition_274;
reg    ap_condition_234;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter2 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_subdone) & (exitcond_fu_293_p2 == 1'd1))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((exitcond6_fu_282_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
        end else if ((((1'b1 == ap_condition_pp1_exit_iter1_state6) & (1'b0 == ap_block_pp1_stage0_subdone)) | ((exitcond6_fu_282_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp1_exit_iter1_state6) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
            ap_enable_reg_pp1_iter2 <= ap_enable_reg_pp1_iter0;
        end else if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter2 <= ap_enable_reg_pp1_iter1;
        end else if (((exitcond6_fu_282_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_enable_reg_pp1_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        axi_data_V1_reg_138 <= tmp_data_V_reg_350;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        axi_data_V1_reg_138 <= axi_data_V_3_reg_241;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_reg_379_pp1_iter1_reg == 1'd0) & (ap_enable_reg_pp1_iter2 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        axi_data_V_1_reg_181 <= p_Val2_s_reg_217;
    end else if (((exitcond6_fu_282_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        axi_data_V_1_reg_181 <= axi_data_V1_reg_138;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        axi_data_V_3_reg_241 <= axi_data_V_1_reg_181;
    end else if ((~((eol_2_reg_253 == 1'd0) & (1'b0 == AXI_video_strm_V_id_V0_status)) & (eol_2_reg_253 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        axi_data_V_3_reg_241 <= AXI_video_strm_V_data_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        axi_last_V1_reg_128 <= tmp_last_V_reg_358;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        axi_last_V1_reg_128 <= axi_last_V_3_reg_229;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_234)) begin
        if (((brmerge_fu_307_p2 == 1'd1) & (exitcond_reg_379 == 1'd0))) begin
            axi_last_V_2_reg_204 <= ap_phi_mux_eol_1_phi_fu_173_p4;
        end else if (((brmerge_fu_307_p2 == 1'd0) & (exitcond_reg_379 == 1'd0))) begin
            axi_last_V_2_reg_204 <= AXI_video_strm_V_last_V_dout;
        end else if ((1'b1 == 1'b1)) begin
            axi_last_V_2_reg_204 <= ap_phi_reg_pp1_iter1_axi_last_V_2_reg_204;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        axi_last_V_3_reg_229 <= eol_1_reg_170;
    end else if ((~((eol_2_reg_253 == 1'd0) & (1'b0 == AXI_video_strm_V_id_V0_status)) & (eol_2_reg_253 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        axi_last_V_3_reg_229 <= AXI_video_strm_V_last_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_reg_379_pp1_iter1_reg == 1'd0) & (ap_enable_reg_pp1_iter2 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        eol_1_reg_170 <= axi_last_V_2_reg_204;
    end else if (((exitcond6_fu_282_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        eol_1_reg_170 <= axi_last_V1_reg_128;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        eol_2_reg_253 <= eol_reg_192;
    end else if ((~((eol_2_reg_253 == 1'd0) & (1'b0 == AXI_video_strm_V_id_V0_status)) & (eol_2_reg_253 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        eol_2_reg_253 <= AXI_video_strm_V_last_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_reg_379_pp1_iter1_reg == 1'd0) & (ap_enable_reg_pp1_iter2 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        eol_reg_192 <= axi_last_V_2_reg_204;
    end else if (((exitcond6_fu_282_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        eol_reg_192 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_234)) begin
        if (((brmerge_fu_307_p2 == 1'd1) & (exitcond_reg_379 == 1'd0))) begin
            p_Val2_s_reg_217 <= ap_phi_mux_axi_data_V_1_phi_fu_184_p4;
        end else if (((brmerge_fu_307_p2 == 1'd0) & (exitcond_reg_379 == 1'd0))) begin
            p_Val2_s_reg_217 <= AXI_video_strm_V_data_V_dout;
        end else if ((1'b1 == 1'b1)) begin
            p_Val2_s_reg_217 <= ap_phi_reg_pp1_iter1_p_Val2_s_reg_217;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_reg_379 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        sof_1_fu_80 <= 1'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sof_1_fu_80 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_293_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        t_V_6_reg_159 <= j_V_fu_298_p2;
    end else if (((exitcond6_fu_282_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        t_V_6_reg_159 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        t_V_reg_148 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        t_V_reg_148 <= i_V_reg_374;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_reg_379 <= exitcond_fu_293_p2;
        exitcond_reg_379_pp1_iter1_reg <= exitcond_reg_379;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_V_reg_374 <= i_V_fu_287_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_reg_379 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        p_Result_1_reg_397 <= {{ap_phi_mux_p_Val2_s_phi_fu_221_p4[127:64]}};
        p_Result_s_reg_392 <= p_Result_s_fu_313_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b1 == AXI_video_strm_V_id_V0_status))) begin
        tmp_data_V_reg_350 <= AXI_video_strm_V_data_V_dout;
        tmp_last_V_reg_358 <= AXI_video_strm_V_last_V_dout;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((eol_2_reg_253 == 1'd0) & (1'b1 == ap_CS_fsm_state9)) | ((brmerge_fu_307_p2 == 1'd0) & (exitcond_reg_379 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)))) begin
        AXI_video_strm_V_data_V_blk_n = AXI_video_strm_V_data_V_empty_n;
    end else begin
        AXI_video_strm_V_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((eol_2_reg_253 == 1'd0) & (1'b1 == ap_CS_fsm_state9)) | ((brmerge_fu_307_p2 == 1'd0) & (exitcond_reg_379 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)))) begin
        AXI_video_strm_V_dest_V_blk_n = AXI_video_strm_V_dest_V_empty_n;
    end else begin
        AXI_video_strm_V_dest_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((~((eol_2_reg_253 == 1'd0) & (1'b0 == AXI_video_strm_V_id_V0_status)) & (eol_2_reg_253 == 1'd0) & (1'b1 == ap_CS_fsm_state9)) | ((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_predicate_op58_read_state6 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001)) | ((1'b1 == ap_CS_fsm_state2) & (1'b1 == AXI_video_strm_V_id_V0_status)))) begin
        AXI_video_strm_V_id_V0_update = 1'b1;
    end else begin
        AXI_video_strm_V_id_V0_update = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((eol_2_reg_253 == 1'd0) & (1'b1 == ap_CS_fsm_state9)) | ((brmerge_fu_307_p2 == 1'd0) & (exitcond_reg_379 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)))) begin
        AXI_video_strm_V_id_V_blk_n = AXI_video_strm_V_id_V_empty_n;
    end else begin
        AXI_video_strm_V_id_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((eol_2_reg_253 == 1'd0) & (1'b1 == ap_CS_fsm_state9)) | ((brmerge_fu_307_p2 == 1'd0) & (exitcond_reg_379 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)))) begin
        AXI_video_strm_V_keep_V_blk_n = AXI_video_strm_V_keep_V_empty_n;
    end else begin
        AXI_video_strm_V_keep_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((eol_2_reg_253 == 1'd0) & (1'b1 == ap_CS_fsm_state9)) | ((brmerge_fu_307_p2 == 1'd0) & (exitcond_reg_379 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)))) begin
        AXI_video_strm_V_last_V_blk_n = AXI_video_strm_V_last_V_empty_n;
    end else begin
        AXI_video_strm_V_last_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((eol_2_reg_253 == 1'd0) & (1'b1 == ap_CS_fsm_state9)) | ((brmerge_fu_307_p2 == 1'd0) & (exitcond_reg_379 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)))) begin
        AXI_video_strm_V_strb_V_blk_n = AXI_video_strm_V_strb_V_empty_n;
    end else begin
        AXI_video_strm_V_strb_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((eol_2_reg_253 == 1'd0) & (1'b1 == ap_CS_fsm_state9)) | ((brmerge_fu_307_p2 == 1'd0) & (exitcond_reg_379 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)))) begin
        AXI_video_strm_V_user_V_blk_n = AXI_video_strm_V_user_V_empty_n;
    end else begin
        AXI_video_strm_V_user_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_condition_pp1_exit_iter1_state6 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter1_state6 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state4) & (exitcond6_fu_282_p2 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0) & (ap_enable_reg_pp1_iter2 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_379_pp1_iter1_reg == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter2 == 1'b1))) begin
        ap_phi_mux_axi_data_V_1_phi_fu_184_p4 = p_Val2_s_reg_217;
    end else begin
        ap_phi_mux_axi_data_V_1_phi_fu_184_p4 = axi_data_V_1_reg_181;
    end
end

always @ (*) begin
    if (((exitcond_reg_379_pp1_iter1_reg == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter2 == 1'b1))) begin
        ap_phi_mux_eol_1_phi_fu_173_p4 = axi_last_V_2_reg_204;
    end else begin
        ap_phi_mux_eol_1_phi_fu_173_p4 = eol_1_reg_170;
    end
end

always @ (*) begin
    if (((exitcond_reg_379_pp1_iter1_reg == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter2 == 1'b1))) begin
        ap_phi_mux_eol_phi_fu_196_p4 = axi_last_V_2_reg_204;
    end else begin
        ap_phi_mux_eol_phi_fu_196_p4 = eol_reg_192;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_274)) begin
        if ((brmerge_fu_307_p2 == 1'd1)) begin
            ap_phi_mux_p_Val2_s_phi_fu_221_p4 = ap_phi_mux_axi_data_V_1_phi_fu_184_p4;
        end else if ((brmerge_fu_307_p2 == 1'd0)) begin
            ap_phi_mux_p_Val2_s_phi_fu_221_p4 = AXI_video_strm_V_data_V_dout;
        end else begin
            ap_phi_mux_p_Val2_s_phi_fu_221_p4 = ap_phi_reg_pp1_iter1_p_Val2_s_reg_217;
        end
    end else begin
        ap_phi_mux_p_Val2_s_phi_fu_221_p4 = ap_phi_reg_pp1_iter1_p_Val2_s_reg_217;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond6_fu_282_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_379_pp1_iter1_reg == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter2 == 1'b1))) begin
        img_data_stream_0_V_blk_n = img_data_stream_0_V_full_n;
    end else begin
        img_data_stream_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_reg_379_pp1_iter1_reg == 1'd0) & (ap_enable_reg_pp1_iter2 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        img_data_stream_0_V_write = 1'b1;
    end else begin
        img_data_stream_0_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_379_pp1_iter1_reg == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter2 == 1'b1))) begin
        img_data_stream_1_V_blk_n = img_data_stream_1_V_full_n;
    end else begin
        img_data_stream_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_reg_379_pp1_iter1_reg == 1'd0) & (ap_enable_reg_pp1_iter2 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        img_data_stream_1_V_write = 1'b1;
    end else begin
        img_data_stream_1_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_user_V_fu_273_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state2) & (1'b1 == AXI_video_strm_V_id_V0_status))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_user_V_fu_273_p1 == 1'd1) & (1'b1 == AXI_video_strm_V_id_V0_status))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond6_fu_282_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_pp1_stage0 : begin
            if (~((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if (((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if ((~((eol_2_reg_253 == 1'd0) & (1'b0 == AXI_video_strm_V_id_V0_status)) & (eol_2_reg_253 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else if ((~((eol_2_reg_253 == 1'd0) & (1'b0 == AXI_video_strm_V_id_V0_status)) & (ap_phi_mux_eol_2_phi_fu_256_p4 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign AXI_video_strm_V_data_V_read = AXI_video_strm_V_id_V0_update;

assign AXI_video_strm_V_dest_V_read = AXI_video_strm_V_id_V0_update;

assign AXI_video_strm_V_id_V0_status = (AXI_video_strm_V_user_V_empty_n & AXI_video_strm_V_strb_V_empty_n & AXI_video_strm_V_last_V_empty_n & AXI_video_strm_V_keep_V_empty_n & AXI_video_strm_V_id_V_empty_n & AXI_video_strm_V_dest_V_empty_n & AXI_video_strm_V_data_V_empty_n);

assign AXI_video_strm_V_id_V_read = AXI_video_strm_V_id_V0_update;

assign AXI_video_strm_V_keep_V_read = AXI_video_strm_V_id_V0_update;

assign AXI_video_strm_V_last_V_read = AXI_video_strm_V_id_V0_update;

assign AXI_video_strm_V_strb_V_read = AXI_video_strm_V_id_V0_update;

assign AXI_video_strm_V_user_V_read = AXI_video_strm_V_id_V0_update;

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd6];

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_01001 = (((1'b0 == AXI_video_strm_V_id_V0_status) & (ap_enable_reg_pp1_iter1 == 1'b1) & (ap_predicate_op58_read_state6 == 1'b1)) | ((ap_enable_reg_pp1_iter2 == 1'b1) & (((exitcond_reg_379_pp1_iter1_reg == 1'd0) & (img_data_stream_1_V_full_n == 1'b0)) | ((exitcond_reg_379_pp1_iter1_reg == 1'd0) & (img_data_stream_0_V_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp1_stage0_11001 = (((1'b0 == AXI_video_strm_V_id_V0_status) & (ap_enable_reg_pp1_iter1 == 1'b1) & (ap_predicate_op58_read_state6 == 1'b1)) | ((ap_enable_reg_pp1_iter2 == 1'b1) & (((exitcond_reg_379_pp1_iter1_reg == 1'd0) & (img_data_stream_1_V_full_n == 1'b0)) | ((exitcond_reg_379_pp1_iter1_reg == 1'd0) & (img_data_stream_0_V_full_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = (((1'b0 == AXI_video_strm_V_id_V0_status) & (ap_enable_reg_pp1_iter1 == 1'b1) & (ap_predicate_op58_read_state6 == 1'b1)) | ((ap_enable_reg_pp1_iter2 == 1'b1) & (((exitcond_reg_379_pp1_iter1_reg == 1'd0) & (img_data_stream_1_V_full_n == 1'b0)) | ((exitcond_reg_379_pp1_iter1_reg == 1'd0) & (img_data_stream_0_V_full_n == 1'b0)))));
end

assign ap_block_state5_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_pp1_stage0_iter1 = ((1'b0 == AXI_video_strm_V_id_V0_status) & (ap_predicate_op58_read_state6 == 1'b1));
end

always @ (*) begin
    ap_block_state7_pp1_stage0_iter2 = (((exitcond_reg_379_pp1_iter1_reg == 1'd0) & (img_data_stream_1_V_full_n == 1'b0)) | ((exitcond_reg_379_pp1_iter1_reg == 1'd0) & (img_data_stream_0_V_full_n == 1'b0)));
end

always @ (*) begin
    ap_block_state9 = ((eol_2_reg_253 == 1'd0) & (1'b0 == AXI_video_strm_V_id_V0_status));
end

always @ (*) begin
    ap_condition_234 = ((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001));
end

always @ (*) begin
    ap_condition_274 = ((exitcond_reg_379 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0));
end

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_phi_mux_eol_2_phi_fu_256_p4 = eol_2_reg_253;

assign ap_phi_reg_pp1_iter1_axi_last_V_2_reg_204 = 'bx;

assign ap_phi_reg_pp1_iter1_p_Val2_s_reg_217 = 'bx;

always @ (*) begin
    ap_predicate_op58_read_state6 = ((brmerge_fu_307_p2 == 1'd0) & (exitcond_reg_379 == 1'd0));
end

assign brmerge_fu_307_p2 = (sof_1_fu_80 | ap_phi_mux_eol_phi_fu_196_p4);

assign exitcond6_fu_282_p2 = ((t_V_reg_148 == img_rows_V_read) ? 1'b1 : 1'b0);

assign exitcond_fu_293_p2 = ((t_V_6_reg_159 == img_cols_V_read) ? 1'b1 : 1'b0);

assign i_V_fu_287_p2 = (t_V_reg_148 + 32'd1);

assign img_data_stream_0_V_din = p_Result_s_reg_392;

assign img_data_stream_1_V_din = p_Result_1_reg_397;

assign j_V_fu_298_p2 = (t_V_6_reg_159 + 32'd1);

assign p_Result_s_fu_313_p1 = ap_phi_mux_p_Val2_s_phi_fu_221_p4[63:0];

assign tmp_user_V_fu_273_p1 = AXI_video_strm_V_user_V_dout;

endmodule //AXIvideo2Mat
