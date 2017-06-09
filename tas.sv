/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP2
// Date      : Fri Jun  9 13:35:43 2017
/////////////////////////////////////////////////////////////


module tas_DW01_dec_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;

  INVX0 U1 ( .IN(n23), .QN(n12) );
  INVX0 U2 ( .IN(n22), .QN(n11) );
  INVX0 U3 ( .IN(n21), .QN(n10) );
  INVX0 U4 ( .IN(n20), .QN(n9) );
  INVX0 U5 ( .IN(n19), .QN(n8) );
  INVX0 U6 ( .IN(n18), .QN(n7) );
  INVX0 U7 ( .IN(n17), .QN(n6) );
  INVX0 U8 ( .IN(n16), .QN(n5) );
  INVX0 U9 ( .IN(n15), .QN(n4) );
  INVX0 U10 ( .IN(n28), .QN(n3) );
  INVX0 U11 ( .IN(n27), .QN(n2) );
  INVX0 U12 ( .IN(n26), .QN(n1) );
  INVX0 U13 ( .IN(A[0]), .QN(SUM[0]) );
  INVX0 U14 ( .IN(A[14]), .QN(n14) );
  AO21X1 U15 ( .IN1(A[9]), .IN2(n5), .IN3(n15), .Q(SUM[9]) );
  AO21X1 U16 ( .IN1(A[8]), .IN2(n6), .IN3(n16), .Q(SUM[8]) );
  AO21X1 U17 ( .IN1(A[7]), .IN2(n7), .IN3(n17), .Q(SUM[7]) );
  AO21X1 U18 ( .IN1(A[6]), .IN2(n8), .IN3(n18), .Q(SUM[6]) );
  AO21X1 U19 ( .IN1(A[5]), .IN2(n9), .IN3(n19), .Q(SUM[5]) );
  AO21X1 U20 ( .IN1(A[4]), .IN2(n10), .IN3(n20), .Q(SUM[4]) );
  AO21X1 U21 ( .IN1(A[3]), .IN2(n11), .IN3(n21), .Q(SUM[3]) );
  AO21X1 U22 ( .IN1(A[2]), .IN2(n12), .IN3(n22), .Q(SUM[2]) );
  AO21X1 U23 ( .IN1(A[1]), .IN2(A[0]), .IN3(n23), .Q(SUM[1]) );
  XNOR2X1 U24 ( .IN1(n24), .IN2(A[15]), .Q(SUM[15]) );
  NAND2X0 U25 ( .IN1(n25), .IN2(n14), .QN(n24) );
  XNOR2X1 U26 ( .IN1(n14), .IN2(n25), .Q(SUM[14]) );
  AO21X1 U27 ( .IN1(A[13]), .IN2(n1), .IN3(n25), .Q(SUM[13]) );
  NOR2X0 U28 ( .IN1(n1), .IN2(A[13]), .QN(n25) );
  AO21X1 U29 ( .IN1(A[12]), .IN2(n2), .IN3(n26), .Q(SUM[12]) );
  NOR2X0 U30 ( .IN1(n2), .IN2(A[12]), .QN(n26) );
  AO21X1 U31 ( .IN1(A[11]), .IN2(n3), .IN3(n27), .Q(SUM[11]) );
  NOR2X0 U32 ( .IN1(n3), .IN2(A[11]), .QN(n27) );
  AO21X1 U33 ( .IN1(A[10]), .IN2(n4), .IN3(n28), .Q(SUM[10]) );
  NOR2X0 U34 ( .IN1(n4), .IN2(A[10]), .QN(n28) );
  NOR2X0 U35 ( .IN1(n5), .IN2(A[9]), .QN(n15) );
  NOR2X0 U36 ( .IN1(n6), .IN2(A[8]), .QN(n16) );
  NOR2X0 U37 ( .IN1(n7), .IN2(A[7]), .QN(n17) );
  NOR2X0 U38 ( .IN1(n8), .IN2(A[6]), .QN(n18) );
  NOR2X0 U39 ( .IN1(n9), .IN2(A[5]), .QN(n19) );
  NOR2X0 U40 ( .IN1(n10), .IN2(A[4]), .QN(n20) );
  NOR2X0 U41 ( .IN1(n11), .IN2(A[3]), .QN(n21) );
  NOR2X0 U42 ( .IN1(n12), .IN2(A[2]), .QN(n22) );
  NOR2X0 U43 ( .IN1(A[1]), .IN2(A[0]), .QN(n23) );
endmodule


module tas_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [9:1] carry;

  FADDX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  FADDX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  FADDX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  FADDX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  FADDX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  FADDX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  FADDX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XNOR2X1 U1 ( .IN1(n2), .IN2(A[9]), .Q(SUM[9]) );
  NAND2X0 U2 ( .IN1(carry[8]), .IN2(A[8]), .QN(n2) );
  XOR2X1 U3 ( .IN1(carry[8]), .IN2(A[8]), .Q(SUM[8]) );
  XOR2X1 U4 ( .IN1(B[0]), .IN2(A[0]), .Q(SUM[0]) );
  AND2X1 U5 ( .IN1(B[0]), .IN2(A[0]), .Q(n1) );
endmodule


module tas ( clk_50, clk_2, reset_n, serial_data, data_ena, ram_wr_n, ram_data, 
        ram_addr );
  output [7:0] ram_data;
  output [10:0] ram_addr;
  input clk_50, clk_2, reset_n, serial_data, data_ena;
  output ram_wr_n;
  wire   \s2p_ps[0] , done, \num[0] , N20, N21, N22, N33, N34, N35, N36, N37,
         N38, N39, N40, N41, N42, N49, N50, N51, N52, N54, N55, N56, N57, N58,
         N59, N60, N61, N62, N63, N64, N65, N66, ram_ps, send, ram_ns, N70,
         N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84,
         N85, N86, N87, N88, n66, n67, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n97, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n156,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235;
  wire   [6:0] shifted;
  wire   [1:0] s2p_ns;
  wire   [7:0] S2P_reg;
  wire   [7:0] data;
  wire   [9:0] sum;
  wire   [1:0] comp_ns;
  wire   [7:0] divi;
  wire   [15:0] prev;
  wire   [15:0] addr;

  tas_DW01_dec_0 sub_132 ( .A(prev), .SUM({N85, N84, N83, N82, N81, N80, N79, 
        N78, N77, N76, N75, N74, N73, N72, N71, N70}) );
  tas_DW01_add_0 add_105 ( .A(sum), .B({1'b0, 1'b0, data}), .CI(1'b0), .SUM({
        N42, N41, N40, N39, N38, N37, N36, N35, N34, N33}) );
  DFFARX1 \s2p_ps_reg[1]  ( .D(s2p_ns[1]), .CLK(clk_50), .RSTB(reset_n), .Q(
        N21), .QN(n156) );
  DFFX1 \int_ram_data_reg[7]  ( .D(n136), .CLK(clk_2), .Q(ram_data[7]) );
  DFFX1 \int_ram_data_reg[6]  ( .D(n135), .CLK(clk_2), .Q(ram_data[6]) );
  DFFX1 \int_ram_data_reg[5]  ( .D(n134), .CLK(clk_2), .Q(ram_data[5]) );
  DFFX1 \int_ram_data_reg[4]  ( .D(n133), .CLK(clk_2), .Q(ram_data[4]) );
  DFFX1 \int_ram_data_reg[3]  ( .D(n132), .CLK(clk_2), .Q(ram_data[3]) );
  DFFX1 \int_ram_data_reg[2]  ( .D(n131), .CLK(clk_2), .Q(ram_data[2]) );
  DFFX1 \int_ram_data_reg[1]  ( .D(n130), .CLK(clk_2), .Q(ram_data[1]) );
  DFFX1 \int_ram_data_reg[0]  ( .D(n129), .CLK(clk_2), .Q(ram_data[0]) );
  DFFX1 \int_ram_addr_reg[10]  ( .D(n112), .CLK(clk_2), .Q(ram_addr[10]) );
  DFFX1 \int_ram_addr_reg[9]  ( .D(n111), .CLK(clk_2), .Q(ram_addr[9]) );
  DFFX1 \int_ram_addr_reg[8]  ( .D(n110), .CLK(clk_2), .Q(ram_addr[8]) );
  DFFX1 \int_ram_addr_reg[7]  ( .D(n109), .CLK(clk_2), .Q(ram_addr[7]) );
  DFFX1 \int_ram_addr_reg[6]  ( .D(n108), .CLK(clk_2), .Q(ram_addr[6]) );
  DFFX1 \int_ram_addr_reg[5]  ( .D(n107), .CLK(clk_2), .Q(ram_addr[5]) );
  DFFX1 \int_ram_addr_reg[4]  ( .D(n106), .CLK(clk_2), .Q(ram_addr[4]) );
  DFFX1 \int_ram_addr_reg[3]  ( .D(n105), .CLK(clk_2), .Q(ram_addr[3]) );
  DFFX1 \int_ram_addr_reg[2]  ( .D(n104), .CLK(clk_2), .Q(ram_addr[2]) );
  DFFX1 \int_ram_addr_reg[1]  ( .D(n103), .CLK(clk_2), .Q(ram_addr[1]) );
  DFFX1 \int_ram_addr_reg[0]  ( .D(n102), .CLK(clk_2), .Q(ram_addr[0]) );
  DFFX1 \shifted_reg[6]  ( .D(n166), .CLK(clk_50), .Q(shifted[6]) );
  DFFX1 \shifted_reg[5]  ( .D(n165), .CLK(clk_50), .Q(shifted[5]) );
  DFFX1 \shifted_reg[4]  ( .D(n164), .CLK(clk_50), .Q(shifted[4]) );
  DFFX1 \shifted_reg[3]  ( .D(n163), .CLK(clk_50), .Q(shifted[3]) );
  DFFX1 \shifted_reg[2]  ( .D(n162), .CLK(clk_50), .Q(shifted[2]) );
  DFFX1 \shifted_reg[1]  ( .D(n161), .CLK(clk_50), .Q(shifted[1]) );
  DFFX1 \shifted_reg[0]  ( .D(n160), .CLK(clk_50), .Q(shifted[0]) );
  DFFX1 \num_reg[3]  ( .D(n151), .CLK(clk_50), .Q(n225), .QN(n173) );
  DFFX1 \d_num_reg[2]  ( .D(n149), .CLK(clk_50), .Q(n229) );
  DFFX1 \data_reg[6]  ( .D(S2P_reg[6]), .CLK(done), .Q(data[6]) );
  DFFX1 \data_reg[5]  ( .D(S2P_reg[5]), .CLK(done), .Q(data[5]), .QN(n67) );
  DFFX1 \data_reg[2]  ( .D(S2P_reg[2]), .CLK(done), .Q(data[2]), .QN(n66) );
  DFFX1 \data_reg[1]  ( .D(S2P_reg[1]), .CLK(done), .Q(data[1]) );
  DFFX1 \num_reg[2]  ( .D(n152), .CLK(clk_50), .Q(n226) );
  LATCHX1 \tot_reg[0]  ( .CLK(N52), .D(N57), .Q(n92) );
  LATCHX1 \tot_reg[1]  ( .CLK(N52), .D(N58), .Q(n91) );
  LATCHX1 \tot_reg[2]  ( .CLK(N52), .D(N59), .Q(n90) );
  LATCHX1 \divi_reg[0]  ( .CLK(n234), .D(sum[2]), .Q(divi[0]) );
  LATCHX1 \tot_reg[3]  ( .CLK(N52), .D(N60), .Q(n89) );
  LATCHX1 \divi_reg[1]  ( .CLK(n234), .D(sum[3]), .Q(divi[1]) );
  LATCHX1 \tot_reg[4]  ( .CLK(N52), .D(N61), .Q(n88) );
  LATCHX1 \divi_reg[2]  ( .CLK(n234), .D(sum[4]), .Q(divi[2]) );
  LATCHX1 \tot_reg[5]  ( .CLK(N52), .D(N62), .Q(n87) );
  LATCHX1 \divi_reg[3]  ( .CLK(n234), .D(sum[5]), .Q(divi[3]) );
  LATCHX1 \tot_reg[6]  ( .CLK(N52), .D(N63), .Q(n86) );
  LATCHX1 \divi_reg[4]  ( .CLK(n234), .D(sum[6]), .Q(divi[4]) );
  LATCHX1 \tot_reg[7]  ( .CLK(N52), .D(N64), .Q(n85) );
  LATCHX1 \divi_reg[5]  ( .CLK(n234), .D(sum[7]), .Q(divi[5]) );
  LATCHX1 \tot_reg[8]  ( .CLK(N52), .D(N65), .Q(n84) );
  LATCHX1 \divi_reg[6]  ( .CLK(n234), .D(sum[8]), .Q(divi[6]) );
  LATCHX1 \tot_reg[9]  ( .CLK(N52), .D(N66), .Q(n83) );
  LATCHX1 \divi_reg[7]  ( .CLK(n234), .D(sum[9]), .Q(divi[7]) );
  LATCHX1 \addr_reg[11]  ( .CLK(n159), .D(N81), .Q(addr[11]) );
  LATCHX1 \addr_reg[12]  ( .CLK(n159), .D(N82), .Q(addr[12]) );
  LATCHX1 \addr_reg[13]  ( .CLK(n159), .D(N83), .Q(addr[13]) );
  LATCHX1 \addr_reg[14]  ( .CLK(n159), .D(N84), .Q(addr[14]) );
  LATCHX1 \addr_reg[15]  ( .CLK(n159), .D(N85), .Q(addr[15]) );
  DFFARX1 \prev_reg[15]  ( .D(n113), .CLK(clk_2), .RSTB(reset_n), .Q(prev[15])
         );
  DFFARX1 ram_ps_reg ( .D(ram_ns), .CLK(clk_2), .RSTB(reset_n), .Q(ram_ps), 
        .QN(n159) );
  DFFX1 \num_reg[0]  ( .D(n153), .CLK(clk_50), .Q(\num[0] ), .QN(n167) );
  DFFX1 \sum_reg[1]  ( .D(n145), .CLK(clk_50), .Q(sum[1]) );
  DFFX1 \data_reg[3]  ( .D(S2P_reg[3]), .CLK(done), .Q(data[3]) );
  DFFX1 \data_reg[7]  ( .D(S2P_reg[7]), .CLK(done), .Q(data[7]) );
  DFFX1 \sum_reg[9]  ( .D(n137), .CLK(clk_50), .Q(sum[9]) );
  DFFX1 \data_reg[4]  ( .D(S2P_reg[4]), .CLK(done), .Q(data[4]) );
  DFFX1 \num_reg[1]  ( .D(n150), .CLK(clk_50), .Q(n227), .QN(n171) );
  DFFASX1 \prev_reg[11]  ( .D(n117), .CLK(clk_2), .SETB(reset_n), .Q(prev[11])
         );
  LATCHX1 \S2P_reg_reg[7]  ( .CLK(N22), .D(serial_data), .Q(S2P_reg[7]) );
  LATCHX1 \S2P_reg_reg[6]  ( .CLK(N22), .D(shifted[6]), .Q(S2P_reg[6]) );
  LATCHX1 \S2P_reg_reg[5]  ( .CLK(N22), .D(shifted[5]), .Q(S2P_reg[5]) );
  LATCHX1 \S2P_reg_reg[4]  ( .CLK(N22), .D(shifted[4]), .Q(S2P_reg[4]) );
  LATCHX1 \S2P_reg_reg[3]  ( .CLK(N22), .D(shifted[3]), .Q(S2P_reg[3]) );
  LATCHX1 \S2P_reg_reg[2]  ( .CLK(N22), .D(shifted[2]), .Q(S2P_reg[2]) );
  LATCHX1 \S2P_reg_reg[1]  ( .CLK(N22), .D(shifted[1]), .Q(S2P_reg[1]) );
  LATCHX1 div_done_reg ( .CLK(N56), .D(n234), .Q(n222) );
  DFFARX1 sent_reg ( .D(send), .CLK(clk_2), .RSTB(reset_n), .Q(ram_wr_n) );
  DFFARX1 \comp_ps_reg[1]  ( .D(comp_ns[1]), .CLK(clk_50), .RSTB(reset_n), .Q(
        n228), .QN(n169) );
  LATCHX1 \d_cnt_reg[1]  ( .CLK(N52), .D(N54), .Q(n233), .QN(n174) );
  DFFARX1 \comp_ps_reg[0]  ( .D(comp_ns[0]), .CLK(clk_50), .RSTB(reset_n), .Q(
        n230), .QN(n172) );
  LATCHX1 \d_cnt_reg[2]  ( .CLK(N52), .D(N55), .Q(n224) );
  LATCHX1 \addr_reg[0]  ( .CLK(n159), .D(N70), .Q(n221) );
  LATCHX1 \addr_reg[1]  ( .CLK(n159), .D(N71), .Q(n220) );
  LATCHX1 \addr_reg[2]  ( .CLK(n159), .D(N72), .Q(n219) );
  LATCHX1 \addr_reg[3]  ( .CLK(n159), .D(N73), .Q(n218) );
  LATCHX1 \addr_reg[4]  ( .CLK(n159), .D(N74), .Q(n217) );
  LATCHX1 \addr_reg[5]  ( .CLK(n159), .D(N75), .Q(n216) );
  LATCHX1 \addr_reg[6]  ( .CLK(n159), .D(N76), .Q(n215) );
  LATCHX1 \addr_reg[7]  ( .CLK(n159), .D(N77), .Q(n214) );
  LATCHX1 \addr_reg[8]  ( .CLK(n159), .D(N78), .Q(n213) );
  LATCHX1 \addr_reg[9]  ( .CLK(n159), .D(N79), .Q(n212) );
  LATCHX1 \addr_reg[10]  ( .CLK(n159), .D(N80), .Q(n211) );
  LATCHX1 \d_cnt_reg[0]  ( .CLK(N52), .D(n235), .Q(n223) );
  DFFARX1 \prev_reg[1]  ( .D(n127), .CLK(clk_2), .RSTB(reset_n), .Q(prev[1])
         );
  DFFARX1 \prev_reg[2]  ( .D(n126), .CLK(clk_2), .RSTB(reset_n), .Q(prev[2])
         );
  DFFARX1 \prev_reg[3]  ( .D(n125), .CLK(clk_2), .RSTB(reset_n), .Q(prev[3])
         );
  DFFARX1 \prev_reg[4]  ( .D(n124), .CLK(clk_2), .RSTB(reset_n), .Q(prev[4])
         );
  DFFARX1 \prev_reg[5]  ( .D(n123), .CLK(clk_2), .RSTB(reset_n), .Q(prev[5])
         );
  DFFARX1 \prev_reg[6]  ( .D(n122), .CLK(clk_2), .RSTB(reset_n), .Q(prev[6])
         );
  DFFARX1 \prev_reg[7]  ( .D(n121), .CLK(clk_2), .RSTB(reset_n), .Q(prev[7])
         );
  DFFARX1 \prev_reg[8]  ( .D(n120), .CLK(clk_2), .RSTB(reset_n), .Q(prev[8])
         );
  DFFARX1 \prev_reg[9]  ( .D(n119), .CLK(clk_2), .RSTB(reset_n), .Q(prev[9])
         );
  DFFARX1 \prev_reg[10]  ( .D(n118), .CLK(clk_2), .RSTB(reset_n), .Q(prev[10])
         );
  DFFARX1 \prev_reg[12]  ( .D(n116), .CLK(clk_2), .RSTB(reset_n), .Q(prev[12])
         );
  DFFARX1 \prev_reg[13]  ( .D(n115), .CLK(clk_2), .RSTB(reset_n), .Q(prev[13])
         );
  DFFX1 \sum_reg[2]  ( .D(n144), .CLK(clk_50), .Q(sum[2]) );
  DFFX1 \sum_reg[3]  ( .D(n143), .CLK(clk_50), .Q(sum[3]) );
  DFFX1 \sum_reg[4]  ( .D(n142), .CLK(clk_50), .Q(sum[4]) );
  DFFX1 \sum_reg[5]  ( .D(n141), .CLK(clk_50), .Q(sum[5]) );
  DFFX1 \sum_reg[6]  ( .D(n140), .CLK(clk_50), .Q(sum[6]) );
  DFFX1 \sum_reg[7]  ( .D(n139), .CLK(clk_50), .Q(sum[7]) );
  DFFX1 \data_reg[0]  ( .D(S2P_reg[0]), .CLK(done), .Q(data[0]) );
  DFFX1 \sum_reg[0]  ( .D(n146), .CLK(clk_50), .Q(sum[0]) );
  DFFX1 \d_num_reg[0]  ( .D(n148), .CLK(clk_50), .Q(n231), .QN(n170) );
  DFFX1 \sum_reg[8]  ( .D(n138), .CLK(clk_50), .Q(sum[8]) );
  DFFX1 \d_num_reg[1]  ( .D(n147), .CLK(clk_50), .Q(n232) );
  DFFARX1 \prev_reg[14]  ( .D(n114), .CLK(clk_2), .RSTB(reset_n), .Q(prev[14])
         );
  DFFARX1 \s2p_ps_reg[0]  ( .D(s2p_ns[0]), .CLK(clk_50), .RSTB(reset_n), .Q(
        \s2p_ps[0] ), .QN(n168) );
  DFFARX1 \prev_reg[0]  ( .D(n128), .CLK(clk_2), .RSTB(reset_n), .Q(prev[0])
         );
  LATCHX1 done_reg ( .CLK(N20), .D(N21), .Q(done), .QN(n97) );
  LATCHX1 send_reg ( .CLK(N86), .D(n159), .Q(send) );
  LATCHX1 \comp_ns_reg[1]  ( .CLK(N49), .D(N51), .Q(comp_ns[1]) );
  LATCHX1 \comp_ns_reg[0]  ( .CLK(N49), .D(N50), .Q(comp_ns[0]) );
  LATCHX1 ram_ns_reg ( .CLK(N87), .D(N88), .Q(ram_ns) );
  LATCHX1 \S2P_reg_reg[0]  ( .CLK(N22), .D(shifted[0]), .Q(S2P_reg[0]) );
  INVX0 U150 ( .IN(n175), .QN(s2p_ns[1]) );
  INVX0 U151 ( .IN(n176), .QN(s2p_ns[0]) );
  INVX0 U152 ( .IN(n177), .QN(n234) );
  MUX21X1 U153 ( .IN1(shifted[6]), .IN2(S2P_reg[7]), .S(n178), .Q(n166) );
  MUX21X1 U154 ( .IN1(shifted[5]), .IN2(S2P_reg[6]), .S(n178), .Q(n165) );
  MUX21X1 U155 ( .IN1(shifted[4]), .IN2(S2P_reg[5]), .S(n178), .Q(n164) );
  MUX21X1 U156 ( .IN1(shifted[3]), .IN2(S2P_reg[4]), .S(n178), .Q(n163) );
  MUX21X1 U157 ( .IN1(shifted[2]), .IN2(S2P_reg[3]), .S(n178), .Q(n162) );
  MUX21X1 U158 ( .IN1(shifted[1]), .IN2(S2P_reg[2]), .S(n178), .Q(n161) );
  MUX21X1 U159 ( .IN1(shifted[0]), .IN2(S2P_reg[1]), .S(n178), .Q(n160) );
  NOR2X0 U160 ( .IN1(n179), .IN2(n176), .QN(n178) );
  MUX21X1 U161 ( .IN1(n180), .IN2(n181), .S(\s2p_ps[0] ), .Q(n176) );
  NOR2X0 U162 ( .IN1(n225), .IN2(n182), .QN(n181) );
  NAND2X0 U163 ( .IN1(n156), .IN2(data_ena), .QN(n180) );
  AO21X1 U164 ( .IN1(n183), .IN2(n167), .IN3(n184), .Q(n153) );
  MUX21X1 U165 ( .IN1(\num[0] ), .IN2(n185), .S(reset_n), .Q(n184) );
  NOR2X0 U166 ( .IN1(\s2p_ps[0] ), .IN2(N21), .QN(n185) );
  INVX0 U167 ( .IN(n186), .QN(n183) );
  MUX21X1 U168 ( .IN1(n187), .IN2(n188), .S(n226), .Q(n152) );
  AO21X1 U169 ( .IN1(\s2p_ps[0] ), .IN2(n171), .IN3(n189), .Q(n188) );
  NOR3X0 U170 ( .IN1(n186), .IN2(n171), .IN3(n167), .QN(n187) );
  OAI22X1 U171 ( .IN1(n179), .IN2(n175), .IN3(n190), .IN4(n173), .QN(n151) );
  OA21X1 U172 ( .IN1(n191), .IN2(n168), .IN3(reset_n), .Q(n190) );
  NAND3X0 U173 ( .IN1(n191), .IN2(n173), .IN3(\s2p_ps[0] ), .QN(n175) );
  INVX0 U174 ( .IN(n182), .QN(n191) );
  NAND3X0 U175 ( .IN1(n226), .IN2(n227), .IN3(\num[0] ), .QN(n182) );
  MUX21X1 U176 ( .IN1(n192), .IN2(n189), .S(n227), .Q(n150) );
  AO21X1 U177 ( .IN1(\s2p_ps[0] ), .IN2(n167), .IN3(n179), .Q(n189) );
  NOR2X0 U178 ( .IN1(n167), .IN2(n186), .QN(n192) );
  NAND2X0 U179 ( .IN1(reset_n), .IN2(\s2p_ps[0] ), .QN(n186) );
  MUX21X1 U180 ( .IN1(n229), .IN2(n224), .S(n193), .Q(n149) );
  MUX21X1 U181 ( .IN1(n231), .IN2(n223), .S(n193), .Q(n148) );
  MUX21X1 U182 ( .IN1(n232), .IN2(n233), .S(n193), .Q(n147) );
  MUX21X1 U183 ( .IN1(sum[0]), .IN2(n92), .S(n193), .Q(n146) );
  MUX21X1 U184 ( .IN1(sum[1]), .IN2(n91), .S(n193), .Q(n145) );
  MUX21X1 U185 ( .IN1(sum[2]), .IN2(n90), .S(n193), .Q(n144) );
  MUX21X1 U186 ( .IN1(sum[3]), .IN2(n89), .S(n193), .Q(n143) );
  MUX21X1 U187 ( .IN1(sum[4]), .IN2(n88), .S(n193), .Q(n142) );
  MUX21X1 U188 ( .IN1(sum[5]), .IN2(n87), .S(n193), .Q(n141) );
  MUX21X1 U189 ( .IN1(sum[6]), .IN2(n86), .S(n193), .Q(n140) );
  MUX21X1 U190 ( .IN1(sum[7]), .IN2(n85), .S(n193), .Q(n139) );
  MUX21X1 U191 ( .IN1(sum[8]), .IN2(n84), .S(n193), .Q(n138) );
  MUX21X1 U192 ( .IN1(sum[9]), .IN2(n83), .S(n193), .Q(n137) );
  NOR2X0 U193 ( .IN1(n179), .IN2(n97), .QN(n193) );
  INVX0 U194 ( .IN(reset_n), .QN(n179) );
  MUX21X1 U195 ( .IN1(ram_data[7]), .IN2(divi[7]), .S(reset_n), .Q(n136) );
  MUX21X1 U196 ( .IN1(ram_data[6]), .IN2(divi[6]), .S(reset_n), .Q(n135) );
  MUX21X1 U197 ( .IN1(ram_data[5]), .IN2(divi[5]), .S(reset_n), .Q(n134) );
  MUX21X1 U198 ( .IN1(ram_data[4]), .IN2(divi[4]), .S(reset_n), .Q(n133) );
  MUX21X1 U199 ( .IN1(ram_data[3]), .IN2(divi[3]), .S(reset_n), .Q(n132) );
  MUX21X1 U200 ( .IN1(ram_data[2]), .IN2(divi[2]), .S(reset_n), .Q(n131) );
  MUX21X1 U201 ( .IN1(ram_data[1]), .IN2(divi[1]), .S(reset_n), .Q(n130) );
  MUX21X1 U202 ( .IN1(ram_data[0]), .IN2(divi[0]), .S(reset_n), .Q(n129) );
  MUX21X1 U203 ( .IN1(prev[0]), .IN2(n221), .S(send), .Q(n128) );
  MUX21X1 U204 ( .IN1(prev[1]), .IN2(n220), .S(send), .Q(n127) );
  MUX21X1 U205 ( .IN1(prev[2]), .IN2(n219), .S(send), .Q(n126) );
  MUX21X1 U206 ( .IN1(prev[3]), .IN2(n218), .S(send), .Q(n125) );
  MUX21X1 U207 ( .IN1(prev[4]), .IN2(n217), .S(send), .Q(n124) );
  MUX21X1 U208 ( .IN1(prev[5]), .IN2(n216), .S(send), .Q(n123) );
  MUX21X1 U209 ( .IN1(prev[6]), .IN2(n215), .S(send), .Q(n122) );
  MUX21X1 U210 ( .IN1(prev[7]), .IN2(n214), .S(send), .Q(n121) );
  MUX21X1 U211 ( .IN1(prev[8]), .IN2(n213), .S(send), .Q(n120) );
  MUX21X1 U212 ( .IN1(prev[9]), .IN2(n212), .S(send), .Q(n119) );
  MUX21X1 U213 ( .IN1(prev[10]), .IN2(n211), .S(send), .Q(n118) );
  MUX21X1 U214 ( .IN1(prev[11]), .IN2(addr[11]), .S(send), .Q(n117) );
  MUX21X1 U215 ( .IN1(prev[12]), .IN2(addr[12]), .S(send), .Q(n116) );
  MUX21X1 U216 ( .IN1(prev[13]), .IN2(addr[13]), .S(send), .Q(n115) );
  MUX21X1 U217 ( .IN1(prev[14]), .IN2(addr[14]), .S(send), .Q(n114) );
  MUX21X1 U218 ( .IN1(prev[15]), .IN2(addr[15]), .S(send), .Q(n113) );
  MUX21X1 U219 ( .IN1(ram_addr[10]), .IN2(n211), .S(reset_n), .Q(n112) );
  MUX21X1 U220 ( .IN1(ram_addr[9]), .IN2(n212), .S(reset_n), .Q(n111) );
  MUX21X1 U221 ( .IN1(ram_addr[8]), .IN2(n213), .S(reset_n), .Q(n110) );
  MUX21X1 U222 ( .IN1(ram_addr[7]), .IN2(n214), .S(reset_n), .Q(n109) );
  MUX21X1 U223 ( .IN1(ram_addr[6]), .IN2(n215), .S(reset_n), .Q(n108) );
  MUX21X1 U224 ( .IN1(ram_addr[5]), .IN2(n216), .S(reset_n), .Q(n107) );
  MUX21X1 U225 ( .IN1(ram_addr[4]), .IN2(n217), .S(reset_n), .Q(n106) );
  MUX21X1 U226 ( .IN1(ram_addr[3]), .IN2(n218), .S(reset_n), .Q(n105) );
  MUX21X1 U227 ( .IN1(ram_addr[2]), .IN2(n219), .S(reset_n), .Q(n104) );
  MUX21X1 U228 ( .IN1(ram_addr[1]), .IN2(n220), .S(reset_n), .Q(n103) );
  MUX21X1 U229 ( .IN1(ram_addr[0]), .IN2(n221), .S(reset_n), .Q(n102) );
  OA21X1 U230 ( .IN1(n222), .IN2(send), .IN3(n159), .Q(N88) );
  OR2X1 U231 ( .IN1(n159), .IN2(ram_wr_n), .Q(N87) );
  MUX21X1 U232 ( .IN1(n222), .IN2(ram_wr_n), .S(ram_ps), .Q(N86) );
  AND2X1 U233 ( .IN1(N42), .IN2(n194), .Q(N66) );
  AND2X1 U234 ( .IN1(N41), .IN2(n194), .Q(N65) );
  AND2X1 U235 ( .IN1(N40), .IN2(n194), .Q(N64) );
  AND2X1 U236 ( .IN1(N39), .IN2(n194), .Q(N63) );
  AND2X1 U237 ( .IN1(N38), .IN2(n194), .Q(N62) );
  AND2X1 U238 ( .IN1(N37), .IN2(n194), .Q(N61) );
  AND2X1 U239 ( .IN1(N36), .IN2(n194), .Q(N60) );
  AND2X1 U240 ( .IN1(N35), .IN2(n194), .Q(N59) );
  AND2X1 U241 ( .IN1(N34), .IN2(n194), .Q(N58) );
  AND2X1 U242 ( .IN1(N33), .IN2(n194), .Q(N57) );
  NAND2X0 U243 ( .IN1(n177), .IN2(n195), .QN(N56) );
  NAND2X0 U244 ( .IN1(n228), .IN2(n230), .QN(n177) );
  INVX0 U245 ( .IN(n196), .QN(N55) );
  MUX21X1 U246 ( .IN1(n197), .IN2(n235), .S(n232), .Q(N54) );
  INVX0 U247 ( .IN(n198), .QN(n235) );
  NOR2X0 U248 ( .IN1(n199), .IN2(n170), .QN(n197) );
  AO21X1 U249 ( .IN1(n194), .IN2(done), .IN3(n200), .Q(N52) );
  NAND2X0 U250 ( .IN1(n199), .IN2(n201), .QN(N51) );
  OR4X1 U251 ( .IN1(data[3]), .IN2(data[4]), .IN3(n202), .IN4(n203), .Q(n201)
         );
  NAND4X0 U252 ( .IN1(n230), .IN2(n169), .IN3(data[0]), .IN4(data[7]), .QN(
        n203) );
  MUX21X1 U253 ( .IN1(n204), .IN2(n205), .S(n67), .Q(n202) );
  NAND3X0 U254 ( .IN1(data[6]), .IN2(data[1]), .IN3(n66), .QN(n205) );
  OR3X1 U255 ( .IN1(data[6]), .IN2(n66), .IN3(data[1]), .Q(n204) );
  AO21X1 U256 ( .IN1(n200), .IN2(done), .IN3(n194), .Q(N50) );
  INVX0 U257 ( .IN(n195), .QN(n200) );
  NAND2X0 U258 ( .IN1(n172), .IN2(n169), .QN(n195) );
  NAND2X0 U259 ( .IN1(n206), .IN2(n194), .QN(N49) );
  MUX21X1 U260 ( .IN1(n207), .IN2(n208), .S(n97), .Q(n206) );
  NAND3X0 U261 ( .IN1(n224), .IN2(n174), .IN3(n223), .QN(n208) );
  OR3X1 U262 ( .IN1(n232), .IN2(n231), .IN3(n196), .Q(n207) );
  MUX21X1 U263 ( .IN1(n209), .IN2(n210), .S(n229), .Q(n196) );
  OA21X1 U264 ( .IN1(n232), .IN2(n199), .IN3(n198), .Q(n210) );
  NAND2X0 U265 ( .IN1(n194), .IN2(n170), .QN(n198) );
  NAND3X0 U266 ( .IN1(n231), .IN2(n194), .IN3(n232), .QN(n209) );
  INVX0 U267 ( .IN(n199), .QN(n194) );
  NAND2X0 U268 ( .IN1(n228), .IN2(n172), .QN(n199) );
  NAND2X0 U269 ( .IN1(n168), .IN2(N21), .QN(N22) );
  NAND2X0 U270 ( .IN1(n156), .IN2(\s2p_ps[0] ), .QN(N20) );
endmodule

