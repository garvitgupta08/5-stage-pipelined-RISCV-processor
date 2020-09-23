// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Sep  2 20:21:12 2020
// Host        : DESKTOP-3KH954F running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/vivado_projects/RISCV_Proc/RISCV_Proc.sim/sim_1/synth/timing/xsim/top_time_synth.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module top
   (clk,
    reset,
    writedataM,
    aluoutM,
    memwriteM);
  input clk;
  input reset;
  output [31:0]writedataM;
  output [31:0]aluoutM;
  output memwriteM;

  wire [31:0]aluoutM;
  wire memwriteM;
  wire [31:0]writedataM;

initial begin
 $sdf_annotate("top_time_synth.sdf",,,,"tool_control");
end
  OBUF \aluoutM_OBUF[0]_inst 
       (.I(1'b0),
        .O(aluoutM[0]));
  OBUF \aluoutM_OBUF[10]_inst 
       (.I(1'b0),
        .O(aluoutM[10]));
  OBUF \aluoutM_OBUF[11]_inst 
       (.I(1'b0),
        .O(aluoutM[11]));
  OBUF \aluoutM_OBUF[12]_inst 
       (.I(1'b0),
        .O(aluoutM[12]));
  OBUF \aluoutM_OBUF[13]_inst 
       (.I(1'b0),
        .O(aluoutM[13]));
  OBUF \aluoutM_OBUF[14]_inst 
       (.I(1'b0),
        .O(aluoutM[14]));
  OBUF \aluoutM_OBUF[15]_inst 
       (.I(1'b0),
        .O(aluoutM[15]));
  OBUF \aluoutM_OBUF[16]_inst 
       (.I(1'b0),
        .O(aluoutM[16]));
  OBUF \aluoutM_OBUF[17]_inst 
       (.I(1'b0),
        .O(aluoutM[17]));
  OBUF \aluoutM_OBUF[18]_inst 
       (.I(1'b0),
        .O(aluoutM[18]));
  OBUF \aluoutM_OBUF[19]_inst 
       (.I(1'b0),
        .O(aluoutM[19]));
  OBUF \aluoutM_OBUF[1]_inst 
       (.I(1'b0),
        .O(aluoutM[1]));
  OBUF \aluoutM_OBUF[20]_inst 
       (.I(1'b0),
        .O(aluoutM[20]));
  OBUF \aluoutM_OBUF[21]_inst 
       (.I(1'b0),
        .O(aluoutM[21]));
  OBUF \aluoutM_OBUF[22]_inst 
       (.I(1'b0),
        .O(aluoutM[22]));
  OBUF \aluoutM_OBUF[23]_inst 
       (.I(1'b0),
        .O(aluoutM[23]));
  OBUF \aluoutM_OBUF[24]_inst 
       (.I(1'b0),
        .O(aluoutM[24]));
  OBUF \aluoutM_OBUF[25]_inst 
       (.I(1'b0),
        .O(aluoutM[25]));
  OBUF \aluoutM_OBUF[26]_inst 
       (.I(1'b0),
        .O(aluoutM[26]));
  OBUF \aluoutM_OBUF[27]_inst 
       (.I(1'b0),
        .O(aluoutM[27]));
  OBUF \aluoutM_OBUF[28]_inst 
       (.I(1'b0),
        .O(aluoutM[28]));
  OBUF \aluoutM_OBUF[29]_inst 
       (.I(1'b0),
        .O(aluoutM[29]));
  OBUF \aluoutM_OBUF[2]_inst 
       (.I(1'b0),
        .O(aluoutM[2]));
  OBUF \aluoutM_OBUF[30]_inst 
       (.I(1'b0),
        .O(aluoutM[30]));
  OBUF \aluoutM_OBUF[31]_inst 
       (.I(1'b0),
        .O(aluoutM[31]));
  OBUF \aluoutM_OBUF[3]_inst 
       (.I(1'b0),
        .O(aluoutM[3]));
  OBUF \aluoutM_OBUF[4]_inst 
       (.I(1'b0),
        .O(aluoutM[4]));
  OBUF \aluoutM_OBUF[5]_inst 
       (.I(1'b0),
        .O(aluoutM[5]));
  OBUF \aluoutM_OBUF[6]_inst 
       (.I(1'b0),
        .O(aluoutM[6]));
  OBUF \aluoutM_OBUF[7]_inst 
       (.I(1'b0),
        .O(aluoutM[7]));
  OBUF \aluoutM_OBUF[8]_inst 
       (.I(1'b0),
        .O(aluoutM[8]));
  OBUF \aluoutM_OBUF[9]_inst 
       (.I(1'b0),
        .O(aluoutM[9]));
  OBUF memwriteM_OBUF_inst
       (.I(1'b0),
        .O(memwriteM));
  OBUF \writedataM_OBUF[0]_inst 
       (.I(1'b0),
        .O(writedataM[0]));
  OBUF \writedataM_OBUF[10]_inst 
       (.I(1'b0),
        .O(writedataM[10]));
  OBUF \writedataM_OBUF[11]_inst 
       (.I(1'b0),
        .O(writedataM[11]));
  OBUF \writedataM_OBUF[12]_inst 
       (.I(1'b0),
        .O(writedataM[12]));
  OBUF \writedataM_OBUF[13]_inst 
       (.I(1'b0),
        .O(writedataM[13]));
  OBUF \writedataM_OBUF[14]_inst 
       (.I(1'b0),
        .O(writedataM[14]));
  OBUF \writedataM_OBUF[15]_inst 
       (.I(1'b0),
        .O(writedataM[15]));
  OBUF \writedataM_OBUF[16]_inst 
       (.I(1'b0),
        .O(writedataM[16]));
  OBUF \writedataM_OBUF[17]_inst 
       (.I(1'b0),
        .O(writedataM[17]));
  OBUF \writedataM_OBUF[18]_inst 
       (.I(1'b0),
        .O(writedataM[18]));
  OBUF \writedataM_OBUF[19]_inst 
       (.I(1'b0),
        .O(writedataM[19]));
  OBUF \writedataM_OBUF[1]_inst 
       (.I(1'b0),
        .O(writedataM[1]));
  OBUF \writedataM_OBUF[20]_inst 
       (.I(1'b0),
        .O(writedataM[20]));
  OBUF \writedataM_OBUF[21]_inst 
       (.I(1'b0),
        .O(writedataM[21]));
  OBUF \writedataM_OBUF[22]_inst 
       (.I(1'b0),
        .O(writedataM[22]));
  OBUF \writedataM_OBUF[23]_inst 
       (.I(1'b0),
        .O(writedataM[23]));
  OBUF \writedataM_OBUF[24]_inst 
       (.I(1'b0),
        .O(writedataM[24]));
  OBUF \writedataM_OBUF[25]_inst 
       (.I(1'b0),
        .O(writedataM[25]));
  OBUF \writedataM_OBUF[26]_inst 
       (.I(1'b0),
        .O(writedataM[26]));
  OBUF \writedataM_OBUF[27]_inst 
       (.I(1'b0),
        .O(writedataM[27]));
  OBUF \writedataM_OBUF[28]_inst 
       (.I(1'b0),
        .O(writedataM[28]));
  OBUF \writedataM_OBUF[29]_inst 
       (.I(1'b0),
        .O(writedataM[29]));
  OBUF \writedataM_OBUF[2]_inst 
       (.I(1'b0),
        .O(writedataM[2]));
  OBUF \writedataM_OBUF[30]_inst 
       (.I(1'b0),
        .O(writedataM[30]));
  OBUF \writedataM_OBUF[31]_inst 
       (.I(1'b0),
        .O(writedataM[31]));
  OBUF \writedataM_OBUF[3]_inst 
       (.I(1'b0),
        .O(writedataM[3]));
  OBUF \writedataM_OBUF[4]_inst 
       (.I(1'b0),
        .O(writedataM[4]));
  OBUF \writedataM_OBUF[5]_inst 
       (.I(1'b0),
        .O(writedataM[5]));
  OBUF \writedataM_OBUF[6]_inst 
       (.I(1'b0),
        .O(writedataM[6]));
  OBUF \writedataM_OBUF[7]_inst 
       (.I(1'b0),
        .O(writedataM[7]));
  OBUF \writedataM_OBUF[8]_inst 
       (.I(1'b0),
        .O(writedataM[8]));
  OBUF \writedataM_OBUF[9]_inst 
       (.I(1'b0),
        .O(writedataM[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
