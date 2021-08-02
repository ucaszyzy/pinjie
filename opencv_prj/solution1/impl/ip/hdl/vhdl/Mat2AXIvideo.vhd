-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Mat2AXIvideo is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    img_rows_V_read : IN STD_LOGIC_VECTOR (31 downto 0);
    img_cols_V_read : IN STD_LOGIC_VECTOR (31 downto 0);
    img_data_stream_0_V_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    img_data_stream_0_V_empty_n : IN STD_LOGIC;
    img_data_stream_0_V_read : OUT STD_LOGIC;
    img_data_stream_1_V_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    img_data_stream_1_V_empty_n : IN STD_LOGIC;
    img_data_stream_1_V_read : OUT STD_LOGIC;
    AXI_video_strm_V_data_V_din : OUT STD_LOGIC_VECTOR (127 downto 0);
    AXI_video_strm_V_data_V_full_n : IN STD_LOGIC;
    AXI_video_strm_V_data_V_write : OUT STD_LOGIC;
    AXI_video_strm_V_keep_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    AXI_video_strm_V_keep_V_full_n : IN STD_LOGIC;
    AXI_video_strm_V_keep_V_write : OUT STD_LOGIC;
    AXI_video_strm_V_strb_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    AXI_video_strm_V_strb_V_full_n : IN STD_LOGIC;
    AXI_video_strm_V_strb_V_write : OUT STD_LOGIC;
    AXI_video_strm_V_user_V_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    AXI_video_strm_V_user_V_full_n : IN STD_LOGIC;
    AXI_video_strm_V_user_V_write : OUT STD_LOGIC;
    AXI_video_strm_V_last_V_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    AXI_video_strm_V_last_V_full_n : IN STD_LOGIC;
    AXI_video_strm_V_last_V_write : OUT STD_LOGIC;
    AXI_video_strm_V_id_V_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    AXI_video_strm_V_id_V_full_n : IN STD_LOGIC;
    AXI_video_strm_V_id_V_write : OUT STD_LOGIC;
    AXI_video_strm_V_dest_V_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    AXI_video_strm_V_dest_V_full_n : IN STD_LOGIC;
    AXI_video_strm_V_dest_V_write : OUT STD_LOGIC );
end;


architecture behav of Mat2AXIvideo is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv16_FFFF : STD_LOGIC_VECTOR (15 downto 0) := "1111111111111111";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv33_1FFFFFFFF : STD_LOGIC_VECTOR (32 downto 0) := "111111111111111111111111111111111";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal img_data_stream_0_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal exitcond_reg_262 : STD_LOGIC_VECTOR (0 downto 0);
    signal img_data_stream_1_V_blk_n : STD_LOGIC;
    signal AXI_video_strm_V_data_V_blk_n : STD_LOGIC;
    signal AXI_video_strm_V_keep_V_blk_n : STD_LOGIC;
    signal AXI_video_strm_V_strb_V_blk_n : STD_LOGIC;
    signal AXI_video_strm_V_user_V_blk_n : STD_LOGIC;
    signal AXI_video_strm_V_last_V_blk_n : STD_LOGIC;
    signal AXI_video_strm_V_id_V_blk_n : STD_LOGIC;
    signal AXI_video_strm_V_dest_V_blk_n : STD_LOGIC;
    signal t_V_3_reg_148 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_V_fu_163_p2 : STD_LOGIC_VECTOR (32 downto 0);
    signal r_V_reg_248 : STD_LOGIC_VECTOR (32 downto 0);
    signal exitcond5_fu_174_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_V_fu_179_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_V_reg_257 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond_fu_185_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal AXI_video_strm_V_id_V1_status : STD_LOGIC;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal j_V_fu_190_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal axi_last_V_fu_200_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal axi_last_V_reg_271 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal t_V_reg_137 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal AXI_video_strm_V_id_V1_update : STD_LOGIC;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_user_V_fu_80 : STD_LOGIC_VECTOR (0 downto 0);
    signal lhs_V_cast_fu_159_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal tmp_cast_fu_196_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal val_assign_1_1_fu_213_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal val_assign_1_fu_209_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((exitcond5_fu_174_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state3);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((exitcond5_fu_174_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    t_V_3_reg_148_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_185_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                t_V_3_reg_148 <= j_V_fu_190_p2;
            elsif (((exitcond5_fu_174_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                t_V_3_reg_148 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    t_V_reg_137_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                t_V_reg_137 <= i_V_reg_257;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                t_V_reg_137 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    tmp_user_V_fu_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_reg_262 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                tmp_user_V_fu_80 <= ap_const_lv1_0;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                tmp_user_V_fu_80 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_185_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                axi_last_V_reg_271 <= axi_last_V_fu_200_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                exitcond_reg_262 <= exitcond_fu_185_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_V_reg_257 <= i_V_fu_179_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                r_V_reg_248 <= r_V_fu_163_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, exitcond5_fu_174_p2, ap_CS_fsm_state2, exitcond_fu_185_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond5_fu_174_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (exitcond_fu_185_p2 = ap_const_lv1_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (exitcond_fu_185_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;

    AXI_video_strm_V_data_V_blk_n_assign_proc : process(AXI_video_strm_V_data_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_262)
    begin
        if (((exitcond_reg_262 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AXI_video_strm_V_data_V_blk_n <= AXI_video_strm_V_data_V_full_n;
        else 
            AXI_video_strm_V_data_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    AXI_video_strm_V_data_V_din <= (val_assign_1_1_fu_213_p1 & val_assign_1_fu_209_p1);
    AXI_video_strm_V_data_V_write <= AXI_video_strm_V_id_V1_update;

    AXI_video_strm_V_dest_V_blk_n_assign_proc : process(AXI_video_strm_V_dest_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_262)
    begin
        if (((exitcond_reg_262 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AXI_video_strm_V_dest_V_blk_n <= AXI_video_strm_V_dest_V_full_n;
        else 
            AXI_video_strm_V_dest_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    AXI_video_strm_V_dest_V_din <= ap_const_lv1_0;
    AXI_video_strm_V_dest_V_write <= AXI_video_strm_V_id_V1_update;
    AXI_video_strm_V_id_V1_status <= (AXI_video_strm_V_user_V_full_n and AXI_video_strm_V_strb_V_full_n and AXI_video_strm_V_last_V_full_n and AXI_video_strm_V_keep_V_full_n and AXI_video_strm_V_id_V_full_n and AXI_video_strm_V_dest_V_full_n and AXI_video_strm_V_data_V_full_n);

    AXI_video_strm_V_id_V1_update_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_reg_262, ap_block_pp0_stage0_11001)
    begin
        if (((exitcond_reg_262 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            AXI_video_strm_V_id_V1_update <= ap_const_logic_1;
        else 
            AXI_video_strm_V_id_V1_update <= ap_const_logic_0;
        end if; 
    end process;


    AXI_video_strm_V_id_V_blk_n_assign_proc : process(AXI_video_strm_V_id_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_262)
    begin
        if (((exitcond_reg_262 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AXI_video_strm_V_id_V_blk_n <= AXI_video_strm_V_id_V_full_n;
        else 
            AXI_video_strm_V_id_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    AXI_video_strm_V_id_V_din <= ap_const_lv1_0;
    AXI_video_strm_V_id_V_write <= AXI_video_strm_V_id_V1_update;

    AXI_video_strm_V_keep_V_blk_n_assign_proc : process(AXI_video_strm_V_keep_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_262)
    begin
        if (((exitcond_reg_262 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AXI_video_strm_V_keep_V_blk_n <= AXI_video_strm_V_keep_V_full_n;
        else 
            AXI_video_strm_V_keep_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    AXI_video_strm_V_keep_V_din <= ap_const_lv16_FFFF;
    AXI_video_strm_V_keep_V_write <= AXI_video_strm_V_id_V1_update;

    AXI_video_strm_V_last_V_blk_n_assign_proc : process(AXI_video_strm_V_last_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_262)
    begin
        if (((exitcond_reg_262 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AXI_video_strm_V_last_V_blk_n <= AXI_video_strm_V_last_V_full_n;
        else 
            AXI_video_strm_V_last_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    AXI_video_strm_V_last_V_din <= axi_last_V_reg_271;
    AXI_video_strm_V_last_V_write <= AXI_video_strm_V_id_V1_update;

    AXI_video_strm_V_strb_V_blk_n_assign_proc : process(AXI_video_strm_V_strb_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_262)
    begin
        if (((exitcond_reg_262 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AXI_video_strm_V_strb_V_blk_n <= AXI_video_strm_V_strb_V_full_n;
        else 
            AXI_video_strm_V_strb_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    AXI_video_strm_V_strb_V_din <= ap_const_lv16_0;
    AXI_video_strm_V_strb_V_write <= AXI_video_strm_V_id_V1_update;

    AXI_video_strm_V_user_V_blk_n_assign_proc : process(AXI_video_strm_V_user_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_262)
    begin
        if (((exitcond_reg_262 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            AXI_video_strm_V_user_V_blk_n <= AXI_video_strm_V_user_V_full_n;
        else 
            AXI_video_strm_V_user_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    AXI_video_strm_V_user_V_din <= tmp_user_V_fu_80;
    AXI_video_strm_V_user_V_write <= AXI_video_strm_V_id_V1_update;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state5 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(img_data_stream_0_V_empty_n, img_data_stream_1_V_empty_n, ap_enable_reg_pp0_iter1, exitcond_reg_262, AXI_video_strm_V_id_V1_status)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((exitcond_reg_262 = ap_const_lv1_0) and (ap_const_logic_0 = AXI_video_strm_V_id_V1_status)) or ((exitcond_reg_262 = ap_const_lv1_0) and (img_data_stream_1_V_empty_n = ap_const_logic_0)) or ((exitcond_reg_262 = ap_const_lv1_0) and (img_data_stream_0_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(img_data_stream_0_V_empty_n, img_data_stream_1_V_empty_n, ap_enable_reg_pp0_iter1, exitcond_reg_262, AXI_video_strm_V_id_V1_status)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((exitcond_reg_262 = ap_const_lv1_0) and (ap_const_logic_0 = AXI_video_strm_V_id_V1_status)) or ((exitcond_reg_262 = ap_const_lv1_0) and (img_data_stream_1_V_empty_n = ap_const_logic_0)) or ((exitcond_reg_262 = ap_const_lv1_0) and (img_data_stream_0_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(img_data_stream_0_V_empty_n, img_data_stream_1_V_empty_n, ap_enable_reg_pp0_iter1, exitcond_reg_262, AXI_video_strm_V_id_V1_status)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((exitcond_reg_262 = ap_const_lv1_0) and (ap_const_logic_0 = AXI_video_strm_V_id_V1_status)) or ((exitcond_reg_262 = ap_const_lv1_0) and (img_data_stream_1_V_empty_n = ap_const_logic_0)) or ((exitcond_reg_262 = ap_const_lv1_0) and (img_data_stream_0_V_empty_n = ap_const_logic_0))));
    end process;

        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state4_pp0_stage0_iter1_assign_proc : process(img_data_stream_0_V_empty_n, img_data_stream_1_V_empty_n, exitcond_reg_262, AXI_video_strm_V_id_V1_status)
    begin
                ap_block_state4_pp0_stage0_iter1 <= (((exitcond_reg_262 = ap_const_lv1_0) and (ap_const_logic_0 = AXI_video_strm_V_id_V1_status)) or ((exitcond_reg_262 = ap_const_lv1_0) and (img_data_stream_1_V_empty_n = ap_const_logic_0)) or ((exitcond_reg_262 = ap_const_lv1_0) and (img_data_stream_0_V_empty_n = ap_const_logic_0)));
    end process;


    ap_condition_pp0_exit_iter0_state3_assign_proc : process(exitcond_fu_185_p2)
    begin
        if ((exitcond_fu_185_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, exitcond5_fu_174_p2, ap_CS_fsm_state2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((exitcond5_fu_174_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(exitcond5_fu_174_p2, ap_CS_fsm_state2)
    begin
        if (((exitcond5_fu_174_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    axi_last_V_fu_200_p2 <= "1" when (tmp_cast_fu_196_p1 = r_V_reg_248) else "0";
    exitcond5_fu_174_p2 <= "1" when (t_V_reg_137 = img_rows_V_read) else "0";
    exitcond_fu_185_p2 <= "1" when (t_V_3_reg_148 = img_cols_V_read) else "0";
    i_V_fu_179_p2 <= std_logic_vector(unsigned(t_V_reg_137) + unsigned(ap_const_lv32_1));

    img_data_stream_0_V_blk_n_assign_proc : process(img_data_stream_0_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_262)
    begin
        if (((exitcond_reg_262 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            img_data_stream_0_V_blk_n <= img_data_stream_0_V_empty_n;
        else 
            img_data_stream_0_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    img_data_stream_0_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_reg_262, ap_block_pp0_stage0_11001)
    begin
        if (((exitcond_reg_262 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            img_data_stream_0_V_read <= ap_const_logic_1;
        else 
            img_data_stream_0_V_read <= ap_const_logic_0;
        end if; 
    end process;


    img_data_stream_1_V_blk_n_assign_proc : process(img_data_stream_1_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_262)
    begin
        if (((exitcond_reg_262 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            img_data_stream_1_V_blk_n <= img_data_stream_1_V_empty_n;
        else 
            img_data_stream_1_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    img_data_stream_1_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_reg_262, ap_block_pp0_stage0_11001)
    begin
        if (((exitcond_reg_262 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            img_data_stream_1_V_read <= ap_const_logic_1;
        else 
            img_data_stream_1_V_read <= ap_const_logic_0;
        end if; 
    end process;

    j_V_fu_190_p2 <= std_logic_vector(unsigned(t_V_3_reg_148) + unsigned(ap_const_lv32_1));
    lhs_V_cast_fu_159_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(img_cols_V_read),33));
    r_V_fu_163_p2 <= std_logic_vector(unsigned(lhs_V_cast_fu_159_p1) + unsigned(ap_const_lv33_1FFFFFFFF));
    tmp_cast_fu_196_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(t_V_3_reg_148),33));
    val_assign_1_1_fu_213_p1 <= img_data_stream_1_V_dout;
    val_assign_1_fu_209_p1 <= img_data_stream_0_V_dout;
end behav;