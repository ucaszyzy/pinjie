// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Mul_HH_
#define _Mul_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "array_mul_dmul_64bkb.h"

namespace ap_rtl {

struct Mul : public sc_module {
    // Port declarations 17
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > src1_rows_V_read;
    sc_in< sc_lv<32> > src1_cols_V_read;
    sc_in< sc_lv<64> > src1_data_stream_V_dout;
    sc_in< sc_logic > src1_data_stream_V_empty_n;
    sc_out< sc_logic > src1_data_stream_V_read;
    sc_in< sc_lv<64> > src2_data_stream_V_dout;
    sc_in< sc_logic > src2_data_stream_V_empty_n;
    sc_out< sc_logic > src2_data_stream_V_read;
    sc_out< sc_lv<64> > dst_data_stream_V_din;
    sc_in< sc_logic > dst_data_stream_V_full_n;
    sc_out< sc_logic > dst_data_stream_V_write;


    // Module declarations
    Mul(sc_module_name name);
    SC_HAS_PROCESS(Mul);

    ~Mul();

    sc_trace_file* mVcdFile;

    array_mul_dmul_64bkb<1,6,64,64,64>* array_mul_dmul_64bkb_U18;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > src1_data_stream_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > exitcond_i_reg_156;
    sc_signal< sc_logic > src2_data_stream_V_blk_n;
    sc_signal< sc_logic > dst_data_stream_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter8;
    sc_signal< sc_lv<1> > exitcond_i_reg_156_pp0_iter7_reg;
    sc_signal< sc_lv<32> > t_V_2_reg_100;
    sc_signal< sc_lv<1> > exitcond1_i_fu_115_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > i_V_fu_120_p2;
    sc_signal< sc_lv<32> > i_V_reg_151;
    sc_signal< sc_lv<1> > exitcond_i_fu_126_p2;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter6;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter7;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter8;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > exitcond_i_reg_156_pp0_iter1_reg;
    sc_signal< sc_lv<1> > exitcond_i_reg_156_pp0_iter2_reg;
    sc_signal< sc_lv<1> > exitcond_i_reg_156_pp0_iter3_reg;
    sc_signal< sc_lv<1> > exitcond_i_reg_156_pp0_iter4_reg;
    sc_signal< sc_lv<1> > exitcond_i_reg_156_pp0_iter5_reg;
    sc_signal< sc_lv<1> > exitcond_i_reg_156_pp0_iter6_reg;
    sc_signal< sc_lv<32> > j_V_fu_131_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<64> > tmp_reg_165;
    sc_signal< sc_lv<64> > tmp_6_reg_170;
    sc_signal< sc_lv<64> > grp_fu_111_p2;
    sc_signal< sc_lv<64> > t1_reg_175;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter6;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter7;
    sc_signal< sc_lv<32> > t_V_reg_89;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_logic > grp_fu_111_ce;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state12;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state2();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state10_pp0_stage0_iter7();
    void thread_ap_block_state11_pp0_stage0_iter8();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_block_state5_pp0_stage0_iter2();
    void thread_ap_block_state6_pp0_stage0_iter3();
    void thread_ap_block_state7_pp0_stage0_iter4();
    void thread_ap_block_state8_pp0_stage0_iter5();
    void thread_ap_block_state9_pp0_stage0_iter6();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_dst_data_stream_V_blk_n();
    void thread_dst_data_stream_V_din();
    void thread_dst_data_stream_V_write();
    void thread_exitcond1_i_fu_115_p2();
    void thread_exitcond_i_fu_126_p2();
    void thread_grp_fu_111_ce();
    void thread_i_V_fu_120_p2();
    void thread_j_V_fu_131_p2();
    void thread_src1_data_stream_V_blk_n();
    void thread_src1_data_stream_V_read();
    void thread_src2_data_stream_V_blk_n();
    void thread_src2_data_stream_V_read();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif