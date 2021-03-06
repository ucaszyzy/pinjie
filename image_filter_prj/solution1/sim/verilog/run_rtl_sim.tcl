if {[file isfile run_xsim.bat]} {
   set ret [catch {eval exec "./run_xsim.bat | tee temp2.log" >&@ stdout} err]
}
set cmdret [catch {eval exec "grep -i \"Error:\" temp2.log"} err]
if { $ret != 0 || $cmdret == 0 } {
    set fl_end [open end.log w]
    puts $fl_end "Failed"
    close $fl_end
} else {
    set fl_end [open end.log w]
    puts $fl_end "Pass"
    close $fl_end
}
return 0

