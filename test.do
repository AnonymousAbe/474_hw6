# //  ModelSim SE-64 10.5 Feb 12 2016 Linux 3.10.0-327.36.3.el7.x86_64
# //
# //  Copyright 1991-2016 Mentor Graphics Corporation
# //  All Rights Reserved.
# //
# //  ModelSim SE-64 and its associated documentation contain trade
# //  secrets and commercial or financial information that are the property of
# //  Mentor Graphics Corporation and are privileged, confidential,
# //  and exempt from disclosure under the Freedom of Information Act,
# //  5 U.S.C. Section 552. Furthermore, this information
# //  is prohibited from disclosure under the Trade Secrets Act,
# //  18 U.S.C. Section 1905.
# //
# vsim -novopt tas 
# Start time: 15:14:05 on Jun 01,2017
# ** Warning: (vsim-8891) All optimizations are turned off because the -novopt switch is in effect. This will cause your simulation to run very slowly. If you are using this switch to preserve visibility for Debug or PLI features please see the User's Manual section on Preserving Object Visibility with vopt.
# Refreshing /nfs/stak/students/s/smithabr/ECE_474/hw6/work.tas
# Loading sv_std.std
# Loading work.tas
add wave -r sim:/tas/*
force -freeze sim:/tas/clk_50 1 0, 0 {50 ns} -r 100
force -freeze sim:/tas/clk_2 1 0, 0 {1250 ns} -r 100
force reset_n 1
force serial_data 1
run 25
# ** Warning: (vsim-8315) tas.sv(113): No condition is true in the unique/priority if/case statement.
#    Time: 0 ns  Iteration: 0  Instance: /tas
# ** Warning: (vsim-8315) tas.sv(79): No condition is true in the unique/priority if/case statement.
#    Time: 0 ns  Iteration: 0  Instance: /tas
# ** Warning: (vsim-8315) tas.sv(54): No condition is true in the unique/priority if/case statement.
#    Time: 0 ns  Iteration: 0  Instance: /tas
force reset_n 0
run 25
force reset_n 1
force data_ena 1
run 150
force data_ena 0
run 100
force serial_data 0
run 400
force serial_data 1
run 200
run 100
run 100
run 100
force data_ena 1
run 100
force serial_data 0
run 100
force serial_data 1
run 100
force serial_data 0
run 700
run 200
force serial_data 1
run 100
force data_ena 0
force serial_data 0
run 600
run 100
run 200
force data_ena 1
run 100
run 100
force serial_data 1
run 100
force data_ena 0
force serial_data 0
run 600
run 100
force data_ena 1
run 200
force data_ena 0
run 800
run 200
# End time: 15:24:11 on Jun 01,2017, Elapsed time: 0:10:06
# Errors: 0, Warnings: 4
