# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name AXI_video_strm_V_data_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AXI_video_strm_V_data_V \
    op interface \
    ports { AXI_video_strm_V_data_V_dout { I 128 vector } AXI_video_strm_V_data_V_empty_n { I 1 bit } AXI_video_strm_V_data_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name AXI_video_strm_V_keep_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AXI_video_strm_V_keep_V \
    op interface \
    ports { AXI_video_strm_V_keep_V_dout { I 16 vector } AXI_video_strm_V_keep_V_empty_n { I 1 bit } AXI_video_strm_V_keep_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name AXI_video_strm_V_strb_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AXI_video_strm_V_strb_V \
    op interface \
    ports { AXI_video_strm_V_strb_V_dout { I 16 vector } AXI_video_strm_V_strb_V_empty_n { I 1 bit } AXI_video_strm_V_strb_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name AXI_video_strm_V_user_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AXI_video_strm_V_user_V \
    op interface \
    ports { AXI_video_strm_V_user_V_dout { I 1 vector } AXI_video_strm_V_user_V_empty_n { I 1 bit } AXI_video_strm_V_user_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name AXI_video_strm_V_last_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AXI_video_strm_V_last_V \
    op interface \
    ports { AXI_video_strm_V_last_V_dout { I 1 vector } AXI_video_strm_V_last_V_empty_n { I 1 bit } AXI_video_strm_V_last_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name AXI_video_strm_V_id_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AXI_video_strm_V_id_V \
    op interface \
    ports { AXI_video_strm_V_id_V_dout { I 1 vector } AXI_video_strm_V_id_V_empty_n { I 1 bit } AXI_video_strm_V_id_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name AXI_video_strm_V_dest_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_AXI_video_strm_V_dest_V \
    op interface \
    ports { AXI_video_strm_V_dest_V_dout { I 1 vector } AXI_video_strm_V_dest_V_empty_n { I 1 bit } AXI_video_strm_V_dest_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name img_rows_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_rows_V_read \
    op interface \
    ports { img_rows_V_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name img_cols_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_cols_V_read \
    op interface \
    ports { img_cols_V_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name img_data_stream_0_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_data_stream_0_V \
    op interface \
    ports { img_data_stream_0_V_din { O 64 vector } img_data_stream_0_V_full_n { I 1 bit } img_data_stream_0_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name img_data_stream_1_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_data_stream_1_V \
    op interface \
    ports { img_data_stream_1_V_din { O 64 vector } img_data_stream_1_V_full_n { I 1 bit } img_data_stream_1_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


