// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"
// CREATED		"Thu May 19 15:01:29 2022"

module lab7(
	Clock,
	Reset,
	Stop,
	Win,
	Lose,
	DownCount,
	UpCount
);


input wire	Clock;
input wire	Reset;
input wire	Stop;
output wire	Win;
output wire	Lose;
output wire	[2:0] DownCount;
output wire	[2:0] UpCount;

wire	Clk;
wire	Enabler;
wire	Rst;
wire	[2:0] SYNTHESIZED_WIRE_10;
wire	[2:0] SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	[2:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	[2:0] SYNTHESIZED_WIRE_7;

assign	DownCount = SYNTHESIZED_WIRE_10;
assign	UpCount = SYNTHESIZED_WIRE_11;
assign	SYNTHESIZED_WIRE_2 = 1;
assign	SYNTHESIZED_WIRE_5 = 0;




DownControl	b2v_inst(
	.Count(SYNTHESIZED_WIRE_10),
	.Load(SYNTHESIZED_WIRE_6),
	.New(SYNTHESIZED_WIRE_7));


UpControl	b2v_inst2(
	.Count(SYNTHESIZED_WIRE_11),
	.Load(SYNTHESIZED_WIRE_3),
	.New(SYNTHESIZED_WIRE_4));


Counter	b2v_inst3(
	.Clock(Clk),
	.Reset(Rst),
	.Dir(SYNTHESIZED_WIRE_2),
	.CntEn(Enabler),
	.Load(SYNTHESIZED_WIRE_3),
	.New(SYNTHESIZED_WIRE_4),
	.Count(SYNTHESIZED_WIRE_11));


Counter	b2v_inst4(
	.Clock(Clk),
	.Reset(Rst),
	.Dir(SYNTHESIZED_WIRE_5),
	.CntEn(Enabler),
	.Load(SYNTHESIZED_WIRE_6),
	.New(SYNTHESIZED_WIRE_7),
	.Count(SYNTHESIZED_WIRE_10));


WinLose	b2v_inst5(
	.Stop(Stop),
	.DownCount(SYNTHESIZED_WIRE_10),
	.UpCount(SYNTHESIZED_WIRE_11),
	.CntEn(Enabler),
	.Lose(Lose),
	.Win(Win));



assign	Clk = Clock;
assign	Rst = Reset;

endmodule
