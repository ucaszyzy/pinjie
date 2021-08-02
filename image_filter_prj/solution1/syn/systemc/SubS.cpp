// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "SubS.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic SubS::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic SubS::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> SubS::ap_ST_fsm_state1 = "1";
const sc_lv<4> SubS::ap_ST_fsm_state2 = "10";
const sc_lv<4> SubS::ap_ST_fsm_pp0_stage0 = "100";
const sc_lv<4> SubS::ap_ST_fsm_state6 = "1000";
const sc_lv<32> SubS::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool SubS::ap_const_boolean_1 = true;
const sc_lv<32> SubS::ap_const_lv32_2 = "10";
const bool SubS::ap_const_boolean_0 = false;
const sc_lv<1> SubS::ap_const_lv1_0 = "0";
const sc_lv<32> SubS::ap_const_lv32_1 = "1";
const sc_lv<1> SubS::ap_const_lv1_1 = "1";
const sc_lv<32> SubS::ap_const_lv32_3 = "11";
const sc_lv<9> SubS::ap_const_lv9_1CE = "111001110";
const sc_lv<32> SubS::ap_const_lv32_8 = "1000";
const sc_lv<8> SubS::ap_const_lv8_CE = "11001110";
const sc_lv<8> SubS::ap_const_lv8_0 = "00000000";

SubS::SubS(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_01001);
    sensitive << ( src_data_stream_0_V_empty_n );
    sensitive << ( src_data_stream_1_V_empty_n );
    sensitive << ( src_data_stream_2_V_empty_n );
    sensitive << ( dst_data_stream_0_V_full_n );
    sensitive << ( dst_data_stream_1_V_full_n );
    sensitive << ( dst_data_stream_2_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_i_reg_385 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( exitcond_i_reg_385_pp0_iter1_reg );

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( src_data_stream_0_V_empty_n );
    sensitive << ( src_data_stream_1_V_empty_n );
    sensitive << ( src_data_stream_2_V_empty_n );
    sensitive << ( dst_data_stream_0_V_full_n );
    sensitive << ( dst_data_stream_1_V_full_n );
    sensitive << ( dst_data_stream_2_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_i_reg_385 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( exitcond_i_reg_385_pp0_iter1_reg );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( src_data_stream_0_V_empty_n );
    sensitive << ( src_data_stream_1_V_empty_n );
    sensitive << ( src_data_stream_2_V_empty_n );
    sensitive << ( dst_data_stream_0_V_full_n );
    sensitive << ( dst_data_stream_1_V_full_n );
    sensitive << ( dst_data_stream_2_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_i_reg_385 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( exitcond_i_reg_385_pp0_iter1_reg );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state4_pp0_stage0_iter1);
    sensitive << ( src_data_stream_0_V_empty_n );
    sensitive << ( src_data_stream_1_V_empty_n );
    sensitive << ( src_data_stream_2_V_empty_n );
    sensitive << ( exitcond_i_reg_385 );

    SC_METHOD(thread_ap_block_state5_pp0_stage0_iter2);
    sensitive << ( dst_data_stream_0_V_full_n );
    sensitive << ( dst_data_stream_1_V_full_n );
    sensitive << ( dst_data_stream_2_V_full_n );
    sensitive << ( exitcond_i_reg_385_pp0_iter1_reg );

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state3);
    sensitive << ( exitcond_i_fu_262_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( exitcond1_i_fu_251_p2 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( exitcond1_i_fu_251_p2 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_dst_data_stream_0_V_blk_n);
    sensitive << ( dst_data_stream_0_V_full_n );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( exitcond_i_reg_385_pp0_iter1_reg );

    SC_METHOD(thread_dst_data_stream_0_V_din);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( exitcond_i_reg_385_pp0_iter1_reg );
    sensitive << ( ap_block_pp0_stage0_01001 );
    sensitive << ( tmp_fu_282_p3 );
    sensitive << ( p_Val2_9_fu_290_p2 );

    SC_METHOD(thread_dst_data_stream_0_V_write);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( exitcond_i_reg_385_pp0_iter1_reg );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_dst_data_stream_1_V_blk_n);
    sensitive << ( dst_data_stream_1_V_full_n );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( exitcond_i_reg_385_pp0_iter1_reg );

    SC_METHOD(thread_dst_data_stream_1_V_din);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( exitcond_i_reg_385_pp0_iter1_reg );
    sensitive << ( ap_block_pp0_stage0_01001 );
    sensitive << ( tmp_18_fu_313_p3 );
    sensitive << ( p_Val2_13_fu_321_p2 );

    SC_METHOD(thread_dst_data_stream_1_V_write);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( exitcond_i_reg_385_pp0_iter1_reg );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_dst_data_stream_2_V_blk_n);
    sensitive << ( dst_data_stream_2_V_full_n );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( exitcond_i_reg_385_pp0_iter1_reg );

    SC_METHOD(thread_dst_data_stream_2_V_din);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( exitcond_i_reg_385_pp0_iter1_reg );
    sensitive << ( ap_block_pp0_stage0_01001 );
    sensitive << ( tmp_19_fu_344_p3 );
    sensitive << ( p_Val2_15_fu_352_p2 );

    SC_METHOD(thread_dst_data_stream_2_V_write);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( exitcond_i_reg_385_pp0_iter1_reg );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_exitcond1_i_fu_251_p2);
    sensitive << ( src_rows_V );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( t_V_reg_229 );

    SC_METHOD(thread_exitcond_i_fu_262_p2);
    sensitive << ( src_cols_V );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( t_V_2_reg_240 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_i_V_fu_256_p2);
    sensitive << ( t_V_reg_229 );

    SC_METHOD(thread_j_V_fu_267_p2);
    sensitive << ( t_V_2_reg_240 );

    SC_METHOD(thread_lhs_V_1_i_fu_304_p1);
    sensitive << ( tmp_24_reg_400 );

    SC_METHOD(thread_lhs_V_2_i_fu_335_p1);
    sensitive << ( tmp_25_reg_406 );

    SC_METHOD(thread_lhs_V_i_fu_273_p1);
    sensitive << ( tmp_23_reg_394 );

    SC_METHOD(thread_p_Val2_10_fu_276_p2);
    sensitive << ( lhs_V_i_fu_273_p1 );

    SC_METHOD(thread_p_Val2_12_fu_307_p2);
    sensitive << ( lhs_V_1_i_fu_304_p1 );

    SC_METHOD(thread_p_Val2_13_fu_321_p2);
    sensitive << ( tmp_24_reg_400 );

    SC_METHOD(thread_p_Val2_15_fu_352_p2);
    sensitive << ( tmp_25_reg_406 );

    SC_METHOD(thread_p_Val2_9_fu_290_p2);
    sensitive << ( tmp_23_reg_394 );

    SC_METHOD(thread_p_Val2_s_fu_338_p2);
    sensitive << ( lhs_V_2_i_fu_335_p1 );

    SC_METHOD(thread_src_data_stream_0_V_blk_n);
    sensitive << ( src_data_stream_0_V_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( exitcond_i_reg_385 );

    SC_METHOD(thread_src_data_stream_0_V_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_i_reg_385 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_src_data_stream_1_V_blk_n);
    sensitive << ( src_data_stream_1_V_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( exitcond_i_reg_385 );

    SC_METHOD(thread_src_data_stream_1_V_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_i_reg_385 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_src_data_stream_2_V_blk_n);
    sensitive << ( src_data_stream_2_V_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( exitcond_i_reg_385 );

    SC_METHOD(thread_src_data_stream_2_V_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_i_reg_385 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_tmp_18_fu_313_p3);
    sensitive << ( p_Val2_12_fu_307_p2 );

    SC_METHOD(thread_tmp_19_fu_344_p3);
    sensitive << ( p_Val2_s_fu_338_p2 );

    SC_METHOD(thread_tmp_fu_282_p3);
    sensitive << ( p_Val2_10_fu_276_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( exitcond1_i_fu_251_p2 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_i_fu_262_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_subdone );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "0001";
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter2 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "SubS_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, src_rows_V, "(port)src_rows_V");
    sc_trace(mVcdFile, src_cols_V, "(port)src_cols_V");
    sc_trace(mVcdFile, src_data_stream_0_V_dout, "(port)src_data_stream_0_V_dout");
    sc_trace(mVcdFile, src_data_stream_0_V_empty_n, "(port)src_data_stream_0_V_empty_n");
    sc_trace(mVcdFile, src_data_stream_0_V_read, "(port)src_data_stream_0_V_read");
    sc_trace(mVcdFile, src_data_stream_1_V_dout, "(port)src_data_stream_1_V_dout");
    sc_trace(mVcdFile, src_data_stream_1_V_empty_n, "(port)src_data_stream_1_V_empty_n");
    sc_trace(mVcdFile, src_data_stream_1_V_read, "(port)src_data_stream_1_V_read");
    sc_trace(mVcdFile, src_data_stream_2_V_dout, "(port)src_data_stream_2_V_dout");
    sc_trace(mVcdFile, src_data_stream_2_V_empty_n, "(port)src_data_stream_2_V_empty_n");
    sc_trace(mVcdFile, src_data_stream_2_V_read, "(port)src_data_stream_2_V_read");
    sc_trace(mVcdFile, dst_data_stream_0_V_din, "(port)dst_data_stream_0_V_din");
    sc_trace(mVcdFile, dst_data_stream_0_V_full_n, "(port)dst_data_stream_0_V_full_n");
    sc_trace(mVcdFile, dst_data_stream_0_V_write, "(port)dst_data_stream_0_V_write");
    sc_trace(mVcdFile, dst_data_stream_1_V_din, "(port)dst_data_stream_1_V_din");
    sc_trace(mVcdFile, dst_data_stream_1_V_full_n, "(port)dst_data_stream_1_V_full_n");
    sc_trace(mVcdFile, dst_data_stream_1_V_write, "(port)dst_data_stream_1_V_write");
    sc_trace(mVcdFile, dst_data_stream_2_V_din, "(port)dst_data_stream_2_V_din");
    sc_trace(mVcdFile, dst_data_stream_2_V_full_n, "(port)dst_data_stream_2_V_full_n");
    sc_trace(mVcdFile, dst_data_stream_2_V_write, "(port)dst_data_stream_2_V_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, src_data_stream_0_V_blk_n, "src_data_stream_0_V_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, exitcond_i_reg_385, "exitcond_i_reg_385");
    sc_trace(mVcdFile, src_data_stream_1_V_blk_n, "src_data_stream_1_V_blk_n");
    sc_trace(mVcdFile, src_data_stream_2_V_blk_n, "src_data_stream_2_V_blk_n");
    sc_trace(mVcdFile, dst_data_stream_0_V_blk_n, "dst_data_stream_0_V_blk_n");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter2, "ap_enable_reg_pp0_iter2");
    sc_trace(mVcdFile, exitcond_i_reg_385_pp0_iter1_reg, "exitcond_i_reg_385_pp0_iter1_reg");
    sc_trace(mVcdFile, dst_data_stream_1_V_blk_n, "dst_data_stream_1_V_blk_n");
    sc_trace(mVcdFile, dst_data_stream_2_V_blk_n, "dst_data_stream_2_V_blk_n");
    sc_trace(mVcdFile, t_V_2_reg_240, "t_V_2_reg_240");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, exitcond1_i_fu_251_p2, "exitcond1_i_fu_251_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, i_V_fu_256_p2, "i_V_fu_256_p2");
    sc_trace(mVcdFile, i_V_reg_380, "i_V_reg_380");
    sc_trace(mVcdFile, exitcond_i_fu_262_p2, "exitcond_i_fu_262_p2");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter0, "ap_block_state3_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state4_pp0_stage0_iter1, "ap_block_state4_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_state5_pp0_stage0_iter2, "ap_block_state5_pp0_stage0_iter2");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, j_V_fu_267_p2, "j_V_fu_267_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, tmp_23_reg_394, "tmp_23_reg_394");
    sc_trace(mVcdFile, tmp_24_reg_400, "tmp_24_reg_400");
    sc_trace(mVcdFile, tmp_25_reg_406, "tmp_25_reg_406");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state3, "ap_condition_pp0_exit_iter0_state3");
    sc_trace(mVcdFile, t_V_reg_229, "t_V_reg_229");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, ap_block_pp0_stage0_01001, "ap_block_pp0_stage0_01001");
    sc_trace(mVcdFile, lhs_V_i_fu_273_p1, "lhs_V_i_fu_273_p1");
    sc_trace(mVcdFile, p_Val2_10_fu_276_p2, "p_Val2_10_fu_276_p2");
    sc_trace(mVcdFile, tmp_fu_282_p3, "tmp_fu_282_p3");
    sc_trace(mVcdFile, p_Val2_9_fu_290_p2, "p_Val2_9_fu_290_p2");
    sc_trace(mVcdFile, lhs_V_1_i_fu_304_p1, "lhs_V_1_i_fu_304_p1");
    sc_trace(mVcdFile, p_Val2_12_fu_307_p2, "p_Val2_12_fu_307_p2");
    sc_trace(mVcdFile, tmp_18_fu_313_p3, "tmp_18_fu_313_p3");
    sc_trace(mVcdFile, p_Val2_13_fu_321_p2, "p_Val2_13_fu_321_p2");
    sc_trace(mVcdFile, lhs_V_2_i_fu_335_p1, "lhs_V_2_i_fu_335_p1");
    sc_trace(mVcdFile, p_Val2_s_fu_338_p2, "p_Val2_s_fu_338_p2");
    sc_trace(mVcdFile, tmp_19_fu_344_p3, "tmp_19_fu_344_p3");
    sc_trace(mVcdFile, p_Val2_15_fu_352_p2, "p_Val2_15_fu_352_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

SubS::~SubS() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void SubS::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(exitcond1_i_fu_251_p2.read(), ap_const_lv1_1) && 
                    esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state3.read()) && 
             esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_subdone.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(exitcond1_i_fu_251_p2.read(), ap_const_lv1_0) && 
                    esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_subdone.read())) {
            if (esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state3.read())) {
                ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state3.read() ^ ap_const_logic_1);
            } else if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
                ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
            }
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter2 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_subdone.read())) {
            ap_enable_reg_pp0_iter2 = ap_enable_reg_pp0_iter1.read();
        } else if ((esl_seteq<1,1,1>(exitcond1_i_fu_251_p2.read(), ap_const_lv1_0) && 
                    esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
            ap_enable_reg_pp0_iter2 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_fu_262_p2.read()))) {
        t_V_2_reg_240 = j_V_fu_267_p2.read();
    } else if ((esl_seteq<1,1,1>(exitcond1_i_fu_251_p2.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        t_V_2_reg_240 = ap_const_lv32_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        t_V_reg_229 = i_V_reg_380.read();
    } else if ((!(esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        t_V_reg_229 = ap_const_lv32_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        exitcond_i_reg_385 = exitcond_i_fu_262_p2.read();
        exitcond_i_reg_385_pp0_iter1_reg = exitcond_i_reg_385.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_V_reg_380 = i_V_fu_256_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(exitcond_i_reg_385.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        tmp_23_reg_394 = src_data_stream_0_V_dout.read();
        tmp_24_reg_400 = src_data_stream_1_V_dout.read();
        tmp_25_reg_406 = src_data_stream_2_V_dout.read();
    }
}

void SubS::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[2];
}

void SubS::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void SubS::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void SubS::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[3];
}

void SubS::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void SubS::thread_ap_block_pp0_stage0_01001() {
    ap_block_pp0_stage0_01001 = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
  ((esl_seteq<1,1,1>(exitcond_i_reg_385.read(), ap_const_lv1_0) && 
    esl_seteq<1,1,1>(ap_const_logic_0, src_data_stream_0_V_empty_n.read())) || 
   (esl_seteq<1,1,1>(exitcond_i_reg_385.read(), ap_const_lv1_0) && 
    esl_seteq<1,1,1>(ap_const_logic_0, src_data_stream_1_V_empty_n.read())) || 
   (esl_seteq<1,1,1>(exitcond_i_reg_385.read(), ap_const_lv1_0) && 
    esl_seteq<1,1,1>(ap_const_logic_0, src_data_stream_2_V_empty_n.read())))) || (esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
  ((esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_reg_385_pp0_iter1_reg.read()) && 
    esl_seteq<1,1,1>(ap_const_logic_0, dst_data_stream_0_V_full_n.read())) || 
   (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_reg_385_pp0_iter1_reg.read()) && 
    esl_seteq<1,1,1>(ap_const_logic_0, dst_data_stream_1_V_full_n.read())) || 
   (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_reg_385_pp0_iter1_reg.read()) && 
    esl_seteq<1,1,1>(ap_const_logic_0, dst_data_stream_2_V_full_n.read())))));
}

void SubS::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
  ((esl_seteq<1,1,1>(exitcond_i_reg_385.read(), ap_const_lv1_0) && 
    esl_seteq<1,1,1>(ap_const_logic_0, src_data_stream_0_V_empty_n.read())) || 
   (esl_seteq<1,1,1>(exitcond_i_reg_385.read(), ap_const_lv1_0) && 
    esl_seteq<1,1,1>(ap_const_logic_0, src_data_stream_1_V_empty_n.read())) || 
   (esl_seteq<1,1,1>(exitcond_i_reg_385.read(), ap_const_lv1_0) && 
    esl_seteq<1,1,1>(ap_const_logic_0, src_data_stream_2_V_empty_n.read())))) || (esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
  ((esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_reg_385_pp0_iter1_reg.read()) && 
    esl_seteq<1,1,1>(ap_const_logic_0, dst_data_stream_0_V_full_n.read())) || 
   (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_reg_385_pp0_iter1_reg.read()) && 
    esl_seteq<1,1,1>(ap_const_logic_0, dst_data_stream_1_V_full_n.read())) || 
   (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_reg_385_pp0_iter1_reg.read()) && 
    esl_seteq<1,1,1>(ap_const_logic_0, dst_data_stream_2_V_full_n.read())))));
}

void SubS::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
  ((esl_seteq<1,1,1>(exitcond_i_reg_385.read(), ap_const_lv1_0) && 
    esl_seteq<1,1,1>(ap_const_logic_0, src_data_stream_0_V_empty_n.read())) || 
   (esl_seteq<1,1,1>(exitcond_i_reg_385.read(), ap_const_lv1_0) && 
    esl_seteq<1,1,1>(ap_const_logic_0, src_data_stream_1_V_empty_n.read())) || 
   (esl_seteq<1,1,1>(exitcond_i_reg_385.read(), ap_const_lv1_0) && 
    esl_seteq<1,1,1>(ap_const_logic_0, src_data_stream_2_V_empty_n.read())))) || (esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
  ((esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_reg_385_pp0_iter1_reg.read()) && 
    esl_seteq<1,1,1>(ap_const_logic_0, dst_data_stream_0_V_full_n.read())) || 
   (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_reg_385_pp0_iter1_reg.read()) && 
    esl_seteq<1,1,1>(ap_const_logic_0, dst_data_stream_1_V_full_n.read())) || 
   (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_reg_385_pp0_iter1_reg.read()) && 
    esl_seteq<1,1,1>(ap_const_logic_0, dst_data_stream_2_V_full_n.read())))));
}

void SubS::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void SubS::thread_ap_block_state3_pp0_stage0_iter0() {
    ap_block_state3_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void SubS::thread_ap_block_state4_pp0_stage0_iter1() {
    ap_block_state4_pp0_stage0_iter1 = ((esl_seteq<1,1,1>(exitcond_i_reg_385.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, src_data_stream_0_V_empty_n.read())) || (esl_seteq<1,1,1>(exitcond_i_reg_385.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, src_data_stream_1_V_empty_n.read())) || (esl_seteq<1,1,1>(exitcond_i_reg_385.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, src_data_stream_2_V_empty_n.read())));
}

void SubS::thread_ap_block_state5_pp0_stage0_iter2() {
    ap_block_state5_pp0_stage0_iter2 = ((esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_reg_385_pp0_iter1_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, dst_data_stream_0_V_full_n.read())) || (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_reg_385_pp0_iter1_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, dst_data_stream_1_V_full_n.read())) || (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_reg_385_pp0_iter1_reg.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, dst_data_stream_2_V_full_n.read())));
}

void SubS::thread_ap_condition_pp0_exit_iter0_state3() {
    if (esl_seteq<1,1,1>(exitcond_i_fu_262_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state3 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state3 = ap_const_logic_0;
    }
}

void SubS::thread_ap_done() {
    if ((esl_seteq<1,1,1>(exitcond1_i_fu_251_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void SubS::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void SubS::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void SubS::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void SubS::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(exitcond1_i_fu_251_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void SubS::thread_dst_data_stream_0_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_reg_385_pp0_iter1_reg.read()))) {
        dst_data_stream_0_V_blk_n = dst_data_stream_0_V_full_n.read();
    } else {
        dst_data_stream_0_V_blk_n = ap_const_logic_1;
    }
}

void SubS::thread_dst_data_stream_0_V_din() {
    dst_data_stream_0_V_din = (!tmp_fu_282_p3.read()[0].is_01())? sc_lv<8>(): ((tmp_fu_282_p3.read()[0].to_bool())? ap_const_lv8_0: p_Val2_9_fu_290_p2.read());
}

void SubS::thread_dst_data_stream_0_V_write() {
    if ((esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_reg_385_pp0_iter1_reg.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        dst_data_stream_0_V_write = ap_const_logic_1;
    } else {
        dst_data_stream_0_V_write = ap_const_logic_0;
    }
}

void SubS::thread_dst_data_stream_1_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_reg_385_pp0_iter1_reg.read()))) {
        dst_data_stream_1_V_blk_n = dst_data_stream_1_V_full_n.read();
    } else {
        dst_data_stream_1_V_blk_n = ap_const_logic_1;
    }
}

void SubS::thread_dst_data_stream_1_V_din() {
    dst_data_stream_1_V_din = (!tmp_18_fu_313_p3.read()[0].is_01())? sc_lv<8>(): ((tmp_18_fu_313_p3.read()[0].to_bool())? ap_const_lv8_0: p_Val2_13_fu_321_p2.read());
}

void SubS::thread_dst_data_stream_1_V_write() {
    if ((esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_reg_385_pp0_iter1_reg.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        dst_data_stream_1_V_write = ap_const_logic_1;
    } else {
        dst_data_stream_1_V_write = ap_const_logic_0;
    }
}

void SubS::thread_dst_data_stream_2_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_reg_385_pp0_iter1_reg.read()))) {
        dst_data_stream_2_V_blk_n = dst_data_stream_2_V_full_n.read();
    } else {
        dst_data_stream_2_V_blk_n = ap_const_logic_1;
    }
}

void SubS::thread_dst_data_stream_2_V_din() {
    dst_data_stream_2_V_din = (!tmp_19_fu_344_p3.read()[0].is_01())? sc_lv<8>(): ((tmp_19_fu_344_p3.read()[0].to_bool())? ap_const_lv8_0: p_Val2_15_fu_352_p2.read());
}

void SubS::thread_dst_data_stream_2_V_write() {
    if ((esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_reg_385_pp0_iter1_reg.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        dst_data_stream_2_V_write = ap_const_logic_1;
    } else {
        dst_data_stream_2_V_write = ap_const_logic_0;
    }
}

void SubS::thread_exitcond1_i_fu_251_p2() {
    exitcond1_i_fu_251_p2 = (!t_V_reg_229.read().is_01() || !src_rows_V.read().is_01())? sc_lv<1>(): sc_lv<1>(t_V_reg_229.read() == src_rows_V.read());
}

void SubS::thread_exitcond_i_fu_262_p2() {
    exitcond_i_fu_262_p2 = (!t_V_2_reg_240.read().is_01() || !src_cols_V.read().is_01())? sc_lv<1>(): sc_lv<1>(t_V_2_reg_240.read() == src_cols_V.read());
}

void SubS::thread_i_V_fu_256_p2() {
    i_V_fu_256_p2 = (!t_V_reg_229.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(t_V_reg_229.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void SubS::thread_j_V_fu_267_p2() {
    j_V_fu_267_p2 = (!t_V_2_reg_240.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(t_V_2_reg_240.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void SubS::thread_lhs_V_1_i_fu_304_p1() {
    lhs_V_1_i_fu_304_p1 = esl_zext<9,8>(tmp_24_reg_400.read());
}

void SubS::thread_lhs_V_2_i_fu_335_p1() {
    lhs_V_2_i_fu_335_p1 = esl_zext<9,8>(tmp_25_reg_406.read());
}

void SubS::thread_lhs_V_i_fu_273_p1() {
    lhs_V_i_fu_273_p1 = esl_zext<9,8>(tmp_23_reg_394.read());
}

void SubS::thread_p_Val2_10_fu_276_p2() {
    p_Val2_10_fu_276_p2 = (!lhs_V_i_fu_273_p1.read().is_01() || !ap_const_lv9_1CE.is_01())? sc_lv<9>(): (sc_biguint<9>(lhs_V_i_fu_273_p1.read()) + sc_bigint<9>(ap_const_lv9_1CE));
}

void SubS::thread_p_Val2_12_fu_307_p2() {
    p_Val2_12_fu_307_p2 = (!lhs_V_1_i_fu_304_p1.read().is_01() || !ap_const_lv9_1CE.is_01())? sc_lv<9>(): (sc_biguint<9>(lhs_V_1_i_fu_304_p1.read()) + sc_bigint<9>(ap_const_lv9_1CE));
}

void SubS::thread_p_Val2_13_fu_321_p2() {
    p_Val2_13_fu_321_p2 = (!tmp_24_reg_400.read().is_01() || !ap_const_lv8_CE.is_01())? sc_lv<8>(): (sc_biguint<8>(tmp_24_reg_400.read()) + sc_bigint<8>(ap_const_lv8_CE));
}

void SubS::thread_p_Val2_15_fu_352_p2() {
    p_Val2_15_fu_352_p2 = (!tmp_25_reg_406.read().is_01() || !ap_const_lv8_CE.is_01())? sc_lv<8>(): (sc_biguint<8>(tmp_25_reg_406.read()) + sc_bigint<8>(ap_const_lv8_CE));
}

void SubS::thread_p_Val2_9_fu_290_p2() {
    p_Val2_9_fu_290_p2 = (!tmp_23_reg_394.read().is_01() || !ap_const_lv8_CE.is_01())? sc_lv<8>(): (sc_biguint<8>(tmp_23_reg_394.read()) + sc_bigint<8>(ap_const_lv8_CE));
}

void SubS::thread_p_Val2_s_fu_338_p2() {
    p_Val2_s_fu_338_p2 = (!lhs_V_2_i_fu_335_p1.read().is_01() || !ap_const_lv9_1CE.is_01())? sc_lv<9>(): (sc_biguint<9>(lhs_V_2_i_fu_335_p1.read()) + sc_bigint<9>(ap_const_lv9_1CE));
}

void SubS::thread_src_data_stream_0_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(exitcond_i_reg_385.read(), ap_const_lv1_0))) {
        src_data_stream_0_V_blk_n = src_data_stream_0_V_empty_n.read();
    } else {
        src_data_stream_0_V_blk_n = ap_const_logic_1;
    }
}

void SubS::thread_src_data_stream_0_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(exitcond_i_reg_385.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        src_data_stream_0_V_read = ap_const_logic_1;
    } else {
        src_data_stream_0_V_read = ap_const_logic_0;
    }
}

void SubS::thread_src_data_stream_1_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(exitcond_i_reg_385.read(), ap_const_lv1_0))) {
        src_data_stream_1_V_blk_n = src_data_stream_1_V_empty_n.read();
    } else {
        src_data_stream_1_V_blk_n = ap_const_logic_1;
    }
}

void SubS::thread_src_data_stream_1_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(exitcond_i_reg_385.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        src_data_stream_1_V_read = ap_const_logic_1;
    } else {
        src_data_stream_1_V_read = ap_const_logic_0;
    }
}

void SubS::thread_src_data_stream_2_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(exitcond_i_reg_385.read(), ap_const_lv1_0))) {
        src_data_stream_2_V_blk_n = src_data_stream_2_V_empty_n.read();
    } else {
        src_data_stream_2_V_blk_n = ap_const_logic_1;
    }
}

void SubS::thread_src_data_stream_2_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(exitcond_i_reg_385.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        src_data_stream_2_V_read = ap_const_logic_1;
    } else {
        src_data_stream_2_V_read = ap_const_logic_0;
    }
}

void SubS::thread_tmp_18_fu_313_p3() {
    tmp_18_fu_313_p3 = p_Val2_12_fu_307_p2.read().range(8, 8);
}

void SubS::thread_tmp_19_fu_344_p3() {
    tmp_19_fu_344_p3 = p_Val2_s_fu_338_p2.read().range(8, 8);
}

void SubS::thread_tmp_fu_282_p3() {
    tmp_fu_282_p3 = p_Val2_10_fu_276_p2.read().range(8, 8);
}

void SubS::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((!(esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(exitcond1_i_fu_251_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            if ((!(esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_subdone.read()) && esl_seteq<1,1,1>(exitcond_i_fu_262_p2.read(), ap_const_lv1_1)) && !(esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_subdone.read())))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if (((esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter2.read(), ap_const_logic_1) && 
  esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_subdone.read())) || (esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1) && 
  esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_subdone.read()) && 
  esl_seteq<1,1,1>(exitcond_i_fu_262_p2.read(), ap_const_lv1_1)))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

}

