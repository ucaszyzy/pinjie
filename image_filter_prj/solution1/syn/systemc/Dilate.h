// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Dilate_HH_
#define _Dilate_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "image_filter_mux_kbM.h"
#include "Filter2D_k_buf_0_bkb.h"

namespace ap_rtl {

struct Dilate : public sc_module {
    // Port declarations 27
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > p_src_rows_V;
    sc_in< sc_lv<32> > p_src_cols_V;
    sc_in< sc_lv<8> > p_src_data_stream_0_V_dout;
    sc_in< sc_logic > p_src_data_stream_0_V_empty_n;
    sc_out< sc_logic > p_src_data_stream_0_V_read;
    sc_in< sc_lv<8> > p_src_data_stream_1_V_dout;
    sc_in< sc_logic > p_src_data_stream_1_V_empty_n;
    sc_out< sc_logic > p_src_data_stream_1_V_read;
    sc_in< sc_lv<8> > p_src_data_stream_2_V_dout;
    sc_in< sc_logic > p_src_data_stream_2_V_empty_n;
    sc_out< sc_logic > p_src_data_stream_2_V_read;
    sc_out< sc_lv<8> > p_dst_data_stream_0_V_din;
    sc_in< sc_logic > p_dst_data_stream_0_V_full_n;
    sc_out< sc_logic > p_dst_data_stream_0_V_write;
    sc_out< sc_lv<8> > p_dst_data_stream_1_V_din;
    sc_in< sc_logic > p_dst_data_stream_1_V_full_n;
    sc_out< sc_logic > p_dst_data_stream_1_V_write;
    sc_out< sc_lv<8> > p_dst_data_stream_2_V_din;
    sc_in< sc_logic > p_dst_data_stream_2_V_full_n;
    sc_out< sc_logic > p_dst_data_stream_2_V_write;
    sc_signal< sc_lv<8> > ap_var_for_const0;


    // Module declarations
    Dilate(sc_module_name name);
    SC_HAS_PROCESS(Dilate);

    ~Dilate();

    sc_trace_file* mVcdFile;

    Filter2D_k_buf_0_bkb* k_buf_0_val_3_U;
    Filter2D_k_buf_0_bkb* k_buf_0_val_4_U;
    Filter2D_k_buf_0_bkb* k_buf_0_val_5_U;
    Filter2D_k_buf_0_bkb* k_buf_1_val_3_U;
    Filter2D_k_buf_0_bkb* k_buf_1_val_4_U;
    Filter2D_k_buf_0_bkb* k_buf_1_val_5_U;
    Filter2D_k_buf_0_bkb* k_buf_2_val_3_U;
    Filter2D_k_buf_0_bkb* k_buf_2_val_4_U;
    Filter2D_k_buf_0_bkb* k_buf_2_val_5_U;
    image_filter_mux_kbM<1,1,8,8,8,2,8>* image_filter_mux_kbM_U99;
    image_filter_mux_kbM<1,1,8,8,8,2,8>* image_filter_mux_kbM_U100;
    image_filter_mux_kbM<1,1,8,8,8,2,8>* image_filter_mux_kbM_U101;
    image_filter_mux_kbM<1,1,8,8,8,2,8>* image_filter_mux_kbM_U102;
    image_filter_mux_kbM<1,1,8,8,8,2,8>* image_filter_mux_kbM_U103;
    image_filter_mux_kbM<1,1,8,8,8,2,8>* image_filter_mux_kbM_U104;
    image_filter_mux_kbM<1,1,8,8,8,2,8>* image_filter_mux_kbM_U105;
    image_filter_mux_kbM<1,1,8,8,8,2,8>* image_filter_mux_kbM_U106;
    image_filter_mux_kbM<1,1,8,8,8,2,8>* image_filter_mux_kbM_U107;
    image_filter_mux_kbM<1,1,8,8,8,2,8>* image_filter_mux_kbM_U108;
    image_filter_mux_kbM<1,1,8,8,8,2,8>* image_filter_mux_kbM_U109;
    image_filter_mux_kbM<1,1,8,8,8,2,8>* image_filter_mux_kbM_U110;
    image_filter_mux_kbM<1,1,8,8,8,2,8>* image_filter_mux_kbM_U111;
    image_filter_mux_kbM<1,1,8,8,8,2,8>* image_filter_mux_kbM_U112;
    image_filter_mux_kbM<1,1,8,8,8,2,8>* image_filter_mux_kbM_U113;
    image_filter_mux_kbM<1,1,8,8,8,2,8>* image_filter_mux_kbM_U114;
    image_filter_mux_kbM<1,1,8,8,8,2,8>* image_filter_mux_kbM_U115;
    image_filter_mux_kbM<1,1,8,8,8,2,8>* image_filter_mux_kbM_U116;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > p_src_data_stream_0_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > or_cond_i426_i_i_reg_2136;
    sc_signal< sc_lv<1> > or_cond_i426_i_i_reg_2136_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_reg_2080;
    sc_signal< sc_lv<1> > tmp_48_reg_2071;
    sc_signal< sc_logic > p_src_data_stream_1_V_blk_n;
    sc_signal< sc_logic > p_src_data_stream_2_V_blk_n;
    sc_signal< sc_logic > p_dst_data_stream_0_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_lv<1> > or_cond_i_i_reg_2171;
    sc_signal< sc_lv<1> > or_cond_i_i_reg_2171_pp0_iter4_reg;
    sc_signal< sc_logic > p_dst_data_stream_1_V_blk_n;
    sc_signal< sc_logic > p_dst_data_stream_2_V_blk_n;
    sc_signal< sc_lv<32> > t_V_6_reg_570;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<2> > tmp_37_fu_581_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > tmp_45_fu_593_p2;
    sc_signal< sc_lv<1> > tmp_38_fu_587_p2;
    sc_signal< sc_lv<32> > tmp_46_fu_598_p2;
    sc_signal< sc_lv<32> > tmp_47_fu_603_p2;
    sc_signal< sc_lv<32> > p_neg394_i_i_fu_608_p2;
    sc_signal< sc_lv<1> > exitcond390_i_i_fu_613_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > i_V_fu_618_p2;
    sc_signal< sc_lv<32> > i_V_reg_2066;
    sc_signal< sc_lv<1> > tmp_48_fu_624_p2;
    sc_signal< sc_lv<1> > tmp_309_not_fu_629_p2;
    sc_signal< sc_lv<1> > tmp_309_not_reg_2075;
    sc_signal< sc_lv<1> > icmp_fu_645_p2;
    sc_signal< sc_lv<1> > tmp_51_fu_651_p2;
    sc_signal< sc_lv<1> > tmp_51_reg_2085;
    sc_signal< sc_lv<1> > tmp_340_0_2_fu_657_p2;
    sc_signal< sc_lv<1> > tmp_340_0_2_reg_2089;
    sc_signal< sc_lv<1> > tmp_52_fu_663_p2;
    sc_signal< sc_lv<1> > tmp_52_reg_2093;
    sc_signal< sc_lv<2> > tmp_114_fu_819_p1;
    sc_signal< sc_lv<2> > tmp_114_reg_2106;
    sc_signal< sc_lv<2> > tmp_115_fu_836_p1;
    sc_signal< sc_lv<2> > tmp_115_reg_2113;
    sc_signal< sc_lv<2> > tmp_116_fu_853_p1;
    sc_signal< sc_lv<2> > tmp_116_reg_2120;
    sc_signal< sc_lv<1> > exitcond389_i_i_fu_857_p2;
    sc_signal< sc_lv<1> > exitcond389_i_i_reg_2127;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter1;
    sc_signal< bool > ap_predicate_op192_read_state6;
    sc_signal< bool > ap_predicate_op200_read_state6;
    sc_signal< bool > ap_predicate_op229_read_state6;
    sc_signal< bool > ap_predicate_op237_read_state6;
    sc_signal< bool > ap_predicate_op266_read_state6;
    sc_signal< bool > ap_predicate_op274_read_state6;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter5;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > exitcond389_i_i_reg_2127_pp0_iter1_reg;
    sc_signal< sc_lv<1> > exitcond389_i_i_reg_2127_pp0_iter2_reg;
    sc_signal< sc_lv<1> > exitcond389_i_i_reg_2127_pp0_iter3_reg;
    sc_signal< sc_lv<32> > j_V_fu_862_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > or_cond_i426_i_i_fu_909_p2;
    sc_signal< sc_lv<32> > x_fu_930_p3;
    sc_signal< sc_lv<32> > x_reg_2140;
    sc_signal< sc_lv<1> > brmerge_fu_943_p2;
    sc_signal< sc_lv<1> > brmerge_reg_2145;
    sc_signal< sc_lv<1> > brmerge_reg_2145_pp0_iter1_reg;
    sc_signal< sc_lv<2> > tmp_120_fu_948_p1;
    sc_signal< sc_lv<2> > tmp_120_reg_2158;
    sc_signal< sc_lv<2> > tmp_120_reg_2158_pp0_iter1_reg;
    sc_signal< sc_lv<1> > or_cond_i_i_fu_952_p2;
    sc_signal< sc_lv<1> > or_cond_i_i_reg_2171_pp0_iter1_reg;
    sc_signal< sc_lv<1> > or_cond_i_i_reg_2171_pp0_iter2_reg;
    sc_signal< sc_lv<1> > or_cond_i_i_reg_2171_pp0_iter3_reg;
    sc_signal< sc_lv<11> > k_buf_0_val_3_addr_reg_2175;
    sc_signal< sc_lv<11> > k_buf_0_val_4_addr_reg_2181;
    sc_signal< sc_lv<11> > k_buf_0_val_5_addr_reg_2187;
    sc_signal< sc_lv<11> > k_buf_1_val_3_addr_reg_2193;
    sc_signal< sc_lv<11> > k_buf_1_val_4_addr_reg_2199;
    sc_signal< sc_lv<11> > k_buf_1_val_5_addr_reg_2205;
    sc_signal< sc_lv<11> > k_buf_2_val_3_addr_reg_2211;
    sc_signal< sc_lv<11> > k_buf_2_val_4_addr_reg_2217;
    sc_signal< sc_lv<11> > k_buf_2_val_5_addr_reg_2223;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_37_fu_1058_p3;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_37_reg_2229;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_37_reg_2229_pp0_iter3_reg;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_38_fu_1076_p3;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_38_reg_2236;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_39_fu_1094_p3;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_39_reg_2243;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_s_fu_1113_p3;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_s_reg_2248;
    sc_signal< sc_lv<1> > tmp_386_0_0_2_fu_1121_p2;
    sc_signal< sc_lv<1> > tmp_386_0_0_2_reg_2253;
    sc_signal< sc_lv<8> > src_kernel_win_1_va_37_fu_1216_p3;
    sc_signal< sc_lv<8> > src_kernel_win_1_va_37_reg_2258;
    sc_signal< sc_lv<8> > src_kernel_win_1_va_37_reg_2258_pp0_iter3_reg;
    sc_signal< sc_lv<8> > src_kernel_win_1_va_38_fu_1234_p3;
    sc_signal< sc_lv<8> > src_kernel_win_1_va_38_reg_2265;
    sc_signal< sc_lv<8> > src_kernel_win_1_va_39_fu_1252_p3;
    sc_signal< sc_lv<8> > src_kernel_win_1_va_39_reg_2272;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_25_fu_1271_p3;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_25_reg_2277;
    sc_signal< sc_lv<1> > tmp_386_1_0_2_fu_1279_p2;
    sc_signal< sc_lv<1> > tmp_386_1_0_2_reg_2282;
    sc_signal< sc_lv<8> > src_kernel_win_2_va_40_fu_1374_p3;
    sc_signal< sc_lv<8> > src_kernel_win_2_va_40_reg_2287;
    sc_signal< sc_lv<8> > src_kernel_win_2_va_40_reg_2287_pp0_iter3_reg;
    sc_signal< sc_lv<8> > src_kernel_win_2_va_41_fu_1392_p3;
    sc_signal< sc_lv<8> > src_kernel_win_2_va_41_reg_2294;
    sc_signal< sc_lv<8> > src_kernel_win_2_va_42_fu_1410_p3;
    sc_signal< sc_lv<8> > src_kernel_win_2_va_42_reg_2301;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_32_fu_1429_p3;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_32_reg_2306;
    sc_signal< sc_lv<1> > tmp_386_2_0_2_fu_1437_p2;
    sc_signal< sc_lv<1> > tmp_386_2_0_2_reg_2311;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_22_fu_1526_p3;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_22_reg_2316;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_29_fu_1577_p3;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_29_reg_2322;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_36_fu_1628_p3;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_36_reg_2328;
    sc_signal< sc_lv<8> > tmp_fu_1708_p3;
    sc_signal< sc_lv<8> > tmp_reg_2334;
    sc_signal< sc_lv<8> > tmp_61_fu_1752_p3;
    sc_signal< sc_lv<8> > tmp_61_reg_2339;
    sc_signal< sc_lv<8> > tmp_62_fu_1796_p3;
    sc_signal< sc_lv<8> > tmp_62_reg_2344;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_lv<11> > k_buf_0_val_3_address0;
    sc_signal< sc_logic > k_buf_0_val_3_ce0;
    sc_signal< sc_lv<8> > k_buf_0_val_3_q0;
    sc_signal< sc_logic > k_buf_0_val_3_ce1;
    sc_signal< sc_logic > k_buf_0_val_3_we1;
    sc_signal< sc_lv<11> > k_buf_0_val_4_address0;
    sc_signal< sc_logic > k_buf_0_val_4_ce0;
    sc_signal< sc_lv<8> > k_buf_0_val_4_q0;
    sc_signal< sc_logic > k_buf_0_val_4_ce1;
    sc_signal< sc_logic > k_buf_0_val_4_we1;
    sc_signal< sc_lv<8> > k_buf_0_val_4_d1;
    sc_signal< sc_lv<11> > k_buf_0_val_5_address0;
    sc_signal< sc_logic > k_buf_0_val_5_ce0;
    sc_signal< sc_lv<8> > k_buf_0_val_5_q0;
    sc_signal< sc_logic > k_buf_0_val_5_ce1;
    sc_signal< sc_logic > k_buf_0_val_5_we1;
    sc_signal< sc_lv<8> > k_buf_0_val_5_d1;
    sc_signal< sc_lv<11> > k_buf_1_val_3_address0;
    sc_signal< sc_logic > k_buf_1_val_3_ce0;
    sc_signal< sc_lv<8> > k_buf_1_val_3_q0;
    sc_signal< sc_logic > k_buf_1_val_3_ce1;
    sc_signal< sc_logic > k_buf_1_val_3_we1;
    sc_signal< sc_lv<11> > k_buf_1_val_4_address0;
    sc_signal< sc_logic > k_buf_1_val_4_ce0;
    sc_signal< sc_lv<8> > k_buf_1_val_4_q0;
    sc_signal< sc_logic > k_buf_1_val_4_ce1;
    sc_signal< sc_logic > k_buf_1_val_4_we1;
    sc_signal< sc_lv<8> > k_buf_1_val_4_d1;
    sc_signal< sc_lv<11> > k_buf_1_val_5_address0;
    sc_signal< sc_logic > k_buf_1_val_5_ce0;
    sc_signal< sc_lv<8> > k_buf_1_val_5_q0;
    sc_signal< sc_logic > k_buf_1_val_5_ce1;
    sc_signal< sc_logic > k_buf_1_val_5_we1;
    sc_signal< sc_lv<8> > k_buf_1_val_5_d1;
    sc_signal< sc_lv<11> > k_buf_2_val_3_address0;
    sc_signal< sc_logic > k_buf_2_val_3_ce0;
    sc_signal< sc_lv<8> > k_buf_2_val_3_q0;
    sc_signal< sc_logic > k_buf_2_val_3_ce1;
    sc_signal< sc_logic > k_buf_2_val_3_we1;
    sc_signal< sc_lv<11> > k_buf_2_val_4_address0;
    sc_signal< sc_logic > k_buf_2_val_4_ce0;
    sc_signal< sc_lv<8> > k_buf_2_val_4_q0;
    sc_signal< sc_logic > k_buf_2_val_4_ce1;
    sc_signal< sc_logic > k_buf_2_val_4_we1;
    sc_signal< sc_lv<8> > k_buf_2_val_4_d1;
    sc_signal< sc_lv<11> > k_buf_2_val_5_address0;
    sc_signal< sc_logic > k_buf_2_val_5_ce0;
    sc_signal< sc_lv<8> > k_buf_2_val_5_q0;
    sc_signal< sc_logic > k_buf_2_val_5_ce1;
    sc_signal< sc_logic > k_buf_2_val_5_we1;
    sc_signal< sc_lv<8> > k_buf_2_val_5_d1;
    sc_signal< sc_lv<2> > tmp_36_reg_548;
    sc_signal< sc_lv<32> > t_V_reg_559;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<64> > tmp_63_fu_957_p1;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_fu_230;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_32_fu_234;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_33_fu_238;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_34_fu_242;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_35_fu_246;
    sc_signal< sc_lv<8> > src_kernel_win_0_va_36_fu_250;
    sc_signal< sc_lv<8> > src_kernel_win_1_va_fu_254;
    sc_signal< sc_lv<8> > src_kernel_win_1_va_32_fu_258;
    sc_signal< sc_lv<8> > src_kernel_win_1_va_33_fu_262;
    sc_signal< sc_lv<8> > src_kernel_win_1_va_34_fu_266;
    sc_signal< sc_lv<8> > src_kernel_win_1_va_35_fu_270;
    sc_signal< sc_lv<8> > src_kernel_win_1_va_36_fu_274;
    sc_signal< sc_lv<8> > src_kernel_win_2_va_fu_278;
    sc_signal< sc_lv<8> > src_kernel_win_2_va_32_fu_282;
    sc_signal< sc_lv<8> > src_kernel_win_2_va_33_fu_286;
    sc_signal< sc_lv<8> > src_kernel_win_2_va_34_fu_290;
    sc_signal< sc_lv<8> > src_kernel_win_2_va_35_fu_294;
    sc_signal< sc_lv<8> > src_kernel_win_2_va_36_fu_298;
    sc_signal< sc_lv<8> > right_border_buf_0_s_fu_302;
    sc_signal< sc_lv<8> > col_buf_0_val_0_0_fu_989_p3;
    sc_signal< sc_lv<8> > right_border_buf_2_s_fu_306;
    sc_signal< sc_lv<8> > col_buf_2_val_2_0_fu_1341_p3;
    sc_signal< sc_lv<8> > right_border_buf_2_17_fu_310;
    sc_signal< sc_lv<8> > col_buf_2_val_1_0_fu_1323_p3;
    sc_signal< sc_lv<8> > right_border_buf_0_20_fu_314;
    sc_signal< sc_lv<8> > col_buf_0_val_1_0_fu_1007_p3;
    sc_signal< sc_lv<8> > right_border_buf_2_18_fu_318;
    sc_signal< sc_lv<8> > col_buf_2_val_0_0_fu_1305_p3;
    sc_signal< sc_lv<8> > right_border_buf_1_s_fu_322;
    sc_signal< sc_lv<8> > col_buf_1_val_2_0_fu_1183_p3;
    sc_signal< sc_lv<8> > right_border_buf_0_21_fu_326;
    sc_signal< sc_lv<8> > col_buf_0_val_2_0_fu_1025_p3;
    sc_signal< sc_lv<8> > right_border_buf_1_20_fu_330;
    sc_signal< sc_lv<8> > col_buf_1_val_1_0_fu_1165_p3;
    sc_signal< sc_lv<8> > right_border_buf_1_21_fu_334;
    sc_signal< sc_lv<8> > col_buf_1_val_0_0_fu_1147_p3;
    sc_signal< sc_lv<31> > tmp_107_fu_635_p4;
    sc_signal< sc_lv<32> > tmp_53_fu_668_p2;
    sc_signal< sc_lv<1> > tmp_108_fu_674_p3;
    sc_signal< sc_lv<1> > tmp_55_fu_688_p2;
    sc_signal< sc_lv<1> > rev_fu_682_p2;
    sc_signal< sc_lv<1> > tmp_109_fu_699_p3;
    sc_signal< sc_lv<32> > p_assign_17_0_1_fu_714_p2;
    sc_signal< sc_lv<1> > tmp_110_fu_720_p3;
    sc_signal< sc_lv<1> > tmp_367_0_1_fu_734_p2;
    sc_signal< sc_lv<1> > rev7_fu_728_p2;
    sc_signal< sc_lv<1> > tmp_111_fu_745_p3;
    sc_signal< sc_lv<32> > p_assign_17_0_2_fu_760_p2;
    sc_signal< sc_lv<1> > tmp_112_fu_766_p3;
    sc_signal< sc_lv<1> > tmp_367_0_2_fu_780_p2;
    sc_signal< sc_lv<1> > rev8_fu_774_p2;
    sc_signal< sc_lv<1> > tmp_113_fu_791_p3;
    sc_signal< sc_lv<1> > or_cond_i_i_i_fu_693_p2;
    sc_signal< sc_lv<32> > p_assign_1_fu_707_p3;
    sc_signal< sc_lv<32> > y_3_fu_806_p3;
    sc_signal< sc_lv<32> > row_assign_s_fu_814_p2;
    sc_signal< sc_lv<1> > or_cond_i_i_i_0_1_fu_739_p2;
    sc_signal< sc_lv<32> > p_assign_18_0_1_fu_753_p3;
    sc_signal< sc_lv<32> > y_3_0_1_fu_823_p3;
    sc_signal< sc_lv<32> > row_assign_19_0_1_fu_831_p2;
    sc_signal< sc_lv<1> > or_cond_i_i_i_0_2_fu_785_p2;
    sc_signal< sc_lv<32> > p_assign_18_0_2_fu_799_p3;
    sc_signal< sc_lv<32> > y_3_0_2_fu_840_p3;
    sc_signal< sc_lv<32> > row_assign_19_0_2_fu_848_p2;
    sc_signal< sc_lv<31> > tmp_117_fu_868_p4;
    sc_signal< sc_lv<32> > ImagLoc_x_fu_884_p2;
    sc_signal< sc_lv<1> > tmp_118_fu_890_p3;
    sc_signal< sc_lv<1> > tmp_59_fu_904_p2;
    sc_signal< sc_lv<1> > rev9_fu_898_p2;
    sc_signal< sc_lv<1> > tmp_119_fu_915_p3;
    sc_signal< sc_lv<32> > p_assign_s_fu_923_p3;
    sc_signal< sc_lv<32> > col_assign_6_fu_938_p2;
    sc_signal< sc_lv<1> > icmp3_fu_878_p2;
    sc_signal< sc_lv<8> > tmp_64_fu_978_p5;
    sc_signal< sc_lv<8> > tmp_65_fu_996_p5;
    sc_signal< sc_lv<8> > tmp_66_fu_1014_p5;
    sc_signal< sc_lv<8> > tmp_67_fu_1047_p5;
    sc_signal< sc_lv<8> > tmp_68_fu_1065_p5;
    sc_signal< sc_lv<8> > tmp_69_fu_1083_p5;
    sc_signal< sc_lv<1> > tmp_386_0_0_1_fu_1107_p2;
    sc_signal< sc_lv<8> > tmp_70_fu_1136_p5;
    sc_signal< sc_lv<8> > tmp_71_fu_1154_p5;
    sc_signal< sc_lv<8> > tmp_72_fu_1172_p5;
    sc_signal< sc_lv<8> > tmp_73_fu_1205_p5;
    sc_signal< sc_lv<8> > tmp_74_fu_1223_p5;
    sc_signal< sc_lv<8> > tmp_75_fu_1241_p5;
    sc_signal< sc_lv<1> > tmp_386_1_0_1_fu_1265_p2;
    sc_signal< sc_lv<8> > tmp_76_fu_1294_p5;
    sc_signal< sc_lv<8> > tmp_77_fu_1312_p5;
    sc_signal< sc_lv<8> > tmp_78_fu_1330_p5;
    sc_signal< sc_lv<8> > tmp_79_fu_1363_p5;
    sc_signal< sc_lv<8> > tmp_80_fu_1381_p5;
    sc_signal< sc_lv<8> > tmp_81_fu_1399_p5;
    sc_signal< sc_lv<1> > tmp_386_2_0_1_fu_1423_p2;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_39_fu_1488_p3;
    sc_signal< sc_lv<1> > tmp_386_0_1_fu_1493_p2;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_20_fu_1499_p3;
    sc_signal< sc_lv<1> > tmp_386_0_1_1_fu_1507_p2;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_21_fu_1513_p3;
    sc_signal< sc_lv<1> > tmp_386_0_1_2_fu_1521_p2;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_26_fu_1539_p3;
    sc_signal< sc_lv<1> > tmp_386_1_1_fu_1544_p2;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_27_fu_1550_p3;
    sc_signal< sc_lv<1> > tmp_386_1_1_1_fu_1558_p2;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_28_fu_1564_p3;
    sc_signal< sc_lv<1> > tmp_386_1_1_2_fu_1572_p2;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_33_fu_1590_p3;
    sc_signal< sc_lv<1> > tmp_386_2_1_fu_1595_p2;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_34_fu_1601_p3;
    sc_signal< sc_lv<1> > tmp_386_2_1_1_fu_1609_p2;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_35_fu_1615_p3;
    sc_signal< sc_lv<1> > tmp_386_2_1_2_fu_1623_p2;
    sc_signal< sc_lv<1> > tmp_386_0_2_fu_1677_p2;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_23_fu_1682_p3;
    sc_signal< sc_lv<1> > tmp_386_0_2_1_fu_1689_p2;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_24_fu_1695_p3;
    sc_signal< sc_lv<1> > tmp_386_0_2_2_fu_1703_p2;
    sc_signal< sc_lv<1> > tmp_386_1_2_fu_1721_p2;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_30_fu_1726_p3;
    sc_signal< sc_lv<1> > tmp_386_1_2_1_fu_1733_p2;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_31_fu_1739_p3;
    sc_signal< sc_lv<1> > tmp_386_1_2_2_fu_1747_p2;
    sc_signal< sc_lv<1> > tmp_386_2_2_fu_1765_p2;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_37_fu_1770_p3;
    sc_signal< sc_lv<1> > tmp_386_2_2_1_fu_1777_p2;
    sc_signal< sc_lv<8> > temp_0_i_i_i_059_i_38_fu_1783_p3;
    sc_signal< sc_lv<1> > tmp_386_2_2_2_fu_1791_p2;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< bool > ap_condition_589;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state1;
    static const sc_lv<5> ap_ST_fsm_state2;
    static const sc_lv<5> ap_ST_fsm_state3;
    static const sc_lv<5> ap_ST_fsm_pp0_stage0;
    static const sc_lv<5> ap_ST_fsm_state10;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<32> ap_const_lv32_FFFFFFFE;
    static const sc_lv<32> ap_const_lv32_FFFFFFFD;
    static const sc_lv<8> ap_const_lv8_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ImagLoc_x_fu_884_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state4_pp0_stage0_iter0();
    void thread_ap_block_state5_pp0_stage0_iter1();
    void thread_ap_block_state6_pp0_stage0_iter2();
    void thread_ap_block_state7_pp0_stage0_iter3();
    void thread_ap_block_state8_pp0_stage0_iter4();
    void thread_ap_block_state9_pp0_stage0_iter5();
    void thread_ap_condition_589();
    void thread_ap_condition_pp0_exit_iter0_state4();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_predicate_op192_read_state6();
    void thread_ap_predicate_op200_read_state6();
    void thread_ap_predicate_op229_read_state6();
    void thread_ap_predicate_op237_read_state6();
    void thread_ap_predicate_op266_read_state6();
    void thread_ap_predicate_op274_read_state6();
    void thread_ap_ready();
    void thread_brmerge_fu_943_p2();
    void thread_col_assign_6_fu_938_p2();
    void thread_col_buf_0_val_0_0_fu_989_p3();
    void thread_col_buf_0_val_1_0_fu_1007_p3();
    void thread_col_buf_0_val_2_0_fu_1025_p3();
    void thread_col_buf_1_val_0_0_fu_1147_p3();
    void thread_col_buf_1_val_1_0_fu_1165_p3();
    void thread_col_buf_1_val_2_0_fu_1183_p3();
    void thread_col_buf_2_val_0_0_fu_1305_p3();
    void thread_col_buf_2_val_1_0_fu_1323_p3();
    void thread_col_buf_2_val_2_0_fu_1341_p3();
    void thread_exitcond389_i_i_fu_857_p2();
    void thread_exitcond390_i_i_fu_613_p2();
    void thread_i_V_fu_618_p2();
    void thread_icmp3_fu_878_p2();
    void thread_icmp_fu_645_p2();
    void thread_j_V_fu_862_p2();
    void thread_k_buf_0_val_3_address0();
    void thread_k_buf_0_val_3_ce0();
    void thread_k_buf_0_val_3_ce1();
    void thread_k_buf_0_val_3_we1();
    void thread_k_buf_0_val_4_address0();
    void thread_k_buf_0_val_4_ce0();
    void thread_k_buf_0_val_4_ce1();
    void thread_k_buf_0_val_4_d1();
    void thread_k_buf_0_val_4_we1();
    void thread_k_buf_0_val_5_address0();
    void thread_k_buf_0_val_5_ce0();
    void thread_k_buf_0_val_5_ce1();
    void thread_k_buf_0_val_5_d1();
    void thread_k_buf_0_val_5_we1();
    void thread_k_buf_1_val_3_address0();
    void thread_k_buf_1_val_3_ce0();
    void thread_k_buf_1_val_3_ce1();
    void thread_k_buf_1_val_3_we1();
    void thread_k_buf_1_val_4_address0();
    void thread_k_buf_1_val_4_ce0();
    void thread_k_buf_1_val_4_ce1();
    void thread_k_buf_1_val_4_d1();
    void thread_k_buf_1_val_4_we1();
    void thread_k_buf_1_val_5_address0();
    void thread_k_buf_1_val_5_ce0();
    void thread_k_buf_1_val_5_ce1();
    void thread_k_buf_1_val_5_d1();
    void thread_k_buf_1_val_5_we1();
    void thread_k_buf_2_val_3_address0();
    void thread_k_buf_2_val_3_ce0();
    void thread_k_buf_2_val_3_ce1();
    void thread_k_buf_2_val_3_we1();
    void thread_k_buf_2_val_4_address0();
    void thread_k_buf_2_val_4_ce0();
    void thread_k_buf_2_val_4_ce1();
    void thread_k_buf_2_val_4_d1();
    void thread_k_buf_2_val_4_we1();
    void thread_k_buf_2_val_5_address0();
    void thread_k_buf_2_val_5_ce0();
    void thread_k_buf_2_val_5_ce1();
    void thread_k_buf_2_val_5_d1();
    void thread_k_buf_2_val_5_we1();
    void thread_or_cond_i426_i_i_fu_909_p2();
    void thread_or_cond_i_i_fu_952_p2();
    void thread_or_cond_i_i_i_0_1_fu_739_p2();
    void thread_or_cond_i_i_i_0_2_fu_785_p2();
    void thread_or_cond_i_i_i_fu_693_p2();
    void thread_p_assign_17_0_1_fu_714_p2();
    void thread_p_assign_17_0_2_fu_760_p2();
    void thread_p_assign_18_0_1_fu_753_p3();
    void thread_p_assign_18_0_2_fu_799_p3();
    void thread_p_assign_1_fu_707_p3();
    void thread_p_assign_s_fu_923_p3();
    void thread_p_dst_data_stream_0_V_blk_n();
    void thread_p_dst_data_stream_0_V_din();
    void thread_p_dst_data_stream_0_V_write();
    void thread_p_dst_data_stream_1_V_blk_n();
    void thread_p_dst_data_stream_1_V_din();
    void thread_p_dst_data_stream_1_V_write();
    void thread_p_dst_data_stream_2_V_blk_n();
    void thread_p_dst_data_stream_2_V_din();
    void thread_p_dst_data_stream_2_V_write();
    void thread_p_neg394_i_i_fu_608_p2();
    void thread_p_src_data_stream_0_V_blk_n();
    void thread_p_src_data_stream_0_V_read();
    void thread_p_src_data_stream_1_V_blk_n();
    void thread_p_src_data_stream_1_V_read();
    void thread_p_src_data_stream_2_V_blk_n();
    void thread_p_src_data_stream_2_V_read();
    void thread_rev7_fu_728_p2();
    void thread_rev8_fu_774_p2();
    void thread_rev9_fu_898_p2();
    void thread_rev_fu_682_p2();
    void thread_row_assign_19_0_1_fu_831_p2();
    void thread_row_assign_19_0_2_fu_848_p2();
    void thread_row_assign_s_fu_814_p2();
    void thread_src_kernel_win_0_va_37_fu_1058_p3();
    void thread_src_kernel_win_0_va_38_fu_1076_p3();
    void thread_src_kernel_win_0_va_39_fu_1094_p3();
    void thread_src_kernel_win_1_va_37_fu_1216_p3();
    void thread_src_kernel_win_1_va_38_fu_1234_p3();
    void thread_src_kernel_win_1_va_39_fu_1252_p3();
    void thread_src_kernel_win_2_va_40_fu_1374_p3();
    void thread_src_kernel_win_2_va_41_fu_1392_p3();
    void thread_src_kernel_win_2_va_42_fu_1410_p3();
    void thread_temp_0_i_i_i_059_i_20_fu_1499_p3();
    void thread_temp_0_i_i_i_059_i_21_fu_1513_p3();
    void thread_temp_0_i_i_i_059_i_22_fu_1526_p3();
    void thread_temp_0_i_i_i_059_i_23_fu_1682_p3();
    void thread_temp_0_i_i_i_059_i_24_fu_1695_p3();
    void thread_temp_0_i_i_i_059_i_25_fu_1271_p3();
    void thread_temp_0_i_i_i_059_i_26_fu_1539_p3();
    void thread_temp_0_i_i_i_059_i_27_fu_1550_p3();
    void thread_temp_0_i_i_i_059_i_28_fu_1564_p3();
    void thread_temp_0_i_i_i_059_i_29_fu_1577_p3();
    void thread_temp_0_i_i_i_059_i_30_fu_1726_p3();
    void thread_temp_0_i_i_i_059_i_31_fu_1739_p3();
    void thread_temp_0_i_i_i_059_i_32_fu_1429_p3();
    void thread_temp_0_i_i_i_059_i_33_fu_1590_p3();
    void thread_temp_0_i_i_i_059_i_34_fu_1601_p3();
    void thread_temp_0_i_i_i_059_i_35_fu_1615_p3();
    void thread_temp_0_i_i_i_059_i_36_fu_1628_p3();
    void thread_temp_0_i_i_i_059_i_37_fu_1770_p3();
    void thread_temp_0_i_i_i_059_i_38_fu_1783_p3();
    void thread_temp_0_i_i_i_059_i_39_fu_1488_p3();
    void thread_temp_0_i_i_i_059_i_s_fu_1113_p3();
    void thread_tmp_107_fu_635_p4();
    void thread_tmp_108_fu_674_p3();
    void thread_tmp_109_fu_699_p3();
    void thread_tmp_110_fu_720_p3();
    void thread_tmp_111_fu_745_p3();
    void thread_tmp_112_fu_766_p3();
    void thread_tmp_113_fu_791_p3();
    void thread_tmp_114_fu_819_p1();
    void thread_tmp_115_fu_836_p1();
    void thread_tmp_116_fu_853_p1();
    void thread_tmp_117_fu_868_p4();
    void thread_tmp_118_fu_890_p3();
    void thread_tmp_119_fu_915_p3();
    void thread_tmp_120_fu_948_p1();
    void thread_tmp_309_not_fu_629_p2();
    void thread_tmp_340_0_2_fu_657_p2();
    void thread_tmp_367_0_1_fu_734_p2();
    void thread_tmp_367_0_2_fu_780_p2();
    void thread_tmp_37_fu_581_p2();
    void thread_tmp_386_0_0_1_fu_1107_p2();
    void thread_tmp_386_0_0_2_fu_1121_p2();
    void thread_tmp_386_0_1_1_fu_1507_p2();
    void thread_tmp_386_0_1_2_fu_1521_p2();
    void thread_tmp_386_0_1_fu_1493_p2();
    void thread_tmp_386_0_2_1_fu_1689_p2();
    void thread_tmp_386_0_2_2_fu_1703_p2();
    void thread_tmp_386_0_2_fu_1677_p2();
    void thread_tmp_386_1_0_1_fu_1265_p2();
    void thread_tmp_386_1_0_2_fu_1279_p2();
    void thread_tmp_386_1_1_1_fu_1558_p2();
    void thread_tmp_386_1_1_2_fu_1572_p2();
    void thread_tmp_386_1_1_fu_1544_p2();
    void thread_tmp_386_1_2_1_fu_1733_p2();
    void thread_tmp_386_1_2_2_fu_1747_p2();
    void thread_tmp_386_1_2_fu_1721_p2();
    void thread_tmp_386_2_0_1_fu_1423_p2();
    void thread_tmp_386_2_0_2_fu_1437_p2();
    void thread_tmp_386_2_1_1_fu_1609_p2();
    void thread_tmp_386_2_1_2_fu_1623_p2();
    void thread_tmp_386_2_1_fu_1595_p2();
    void thread_tmp_386_2_2_1_fu_1777_p2();
    void thread_tmp_386_2_2_2_fu_1791_p2();
    void thread_tmp_386_2_2_fu_1765_p2();
    void thread_tmp_38_fu_587_p2();
    void thread_tmp_45_fu_593_p2();
    void thread_tmp_46_fu_598_p2();
    void thread_tmp_47_fu_603_p2();
    void thread_tmp_48_fu_624_p2();
    void thread_tmp_51_fu_651_p2();
    void thread_tmp_52_fu_663_p2();
    void thread_tmp_53_fu_668_p2();
    void thread_tmp_55_fu_688_p2();
    void thread_tmp_59_fu_904_p2();
    void thread_tmp_61_fu_1752_p3();
    void thread_tmp_62_fu_1796_p3();
    void thread_tmp_63_fu_957_p1();
    void thread_tmp_fu_1708_p3();
    void thread_x_fu_930_p3();
    void thread_y_3_0_1_fu_823_p3();
    void thread_y_3_0_2_fu_840_p3();
    void thread_y_3_fu_806_p3();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
