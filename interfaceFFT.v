

module interfaceFFT(iSW,iCLK_50,oHEX0_D,oHEX0_DP,oHEX1_D,oHEX2_D,oHEX3_D,oHEX4_D,oHEX5_D,oHEX6_D,oHEX7_D,oHEX0_DP,
oHEX1_DP,oHEX2_DP,oHEX3_DP,oHEX4_DP,oHEX5_DP,oHEX6_DP,oHEX7_DP);
	input [15:8]iSW;
	input iCLK_50;
	output [6:0] oHEX0_D,oHEX1_D,oHEX2_D,oHEX3_D,oHEX4_D,oHEX5_D,oHEX6_D,oHEX7_D;
	output oHEX0_DP,oHEX1_DP,oHEX2_DP,oHEX3_DP,oHEX4_DP,oHEX5_DP,oHEX6_DP,oHEX7_DP;

	wire [4:0] out0,out1,out2,out3,out4,out5,out6,out7;

			sevenSeg hex(.in_Number (out0),
			.out_Seven (oHEX0_D[6:0]),
			.out_neg (oHEX0_DP),
			.clock (iCLK_50));
			sevenSeg hex1(.in_Number (out1),
			.out_Seven (oHEX1_D),
			.out_neg (oHEX1_DP),
			.clock (iCLK_50));
			sevenSeg hex2(.in_Number (out2),
			.out_Seven (oHEX2_D),
			.out_neg (oHEX2_DP),
			.clock (iCLK_50));
			sevenSeg hex3(.in_Number (out3),
			.out_Seven (oHEX3_D),
			.out_neg (oHEX3_DP),
			.clock (iCLK_50));
			sevenSeg hex4(.in_Number (out4),
			.out_Seven (oHEX4_D),
			.out_neg (oHEX4_DP),
			.clock (iCLK_50));
			sevenSeg hex5(.in_Number (out5),
			.out_Seven (oHEX5_D),
			.out_neg (oHEX5_DP),
			.clock (iCLK_50));
			sevenSeg hex6(.in_Number (out6),
			.out_Seven (oHEX6_D),
			.out_neg (oHEX6_DP),
			.clock(iCLK_50));
			sevenSeg hex7(.in_Number (out7),
			.out_Seven (oHEX7_D),
			.out_neg (oHEX7_DP),
			.clock (iCLK_50));
			walsh wa(
			.i0 (iSW[8]),
			.i1 (iSW[9]),
			.i2 (iSW[10]),
			.i3 (iSW[11]),
			.i4 (iSW[12]),
			.i5 (iSW[13]),
			.i6 (iSW[14]),
			.i7 (iSW[15]),
			.clock(iCLK_50),
			.s0(out0),
			.s1(out1),
			.s2(out2),
			.s3(out3),
			.s4(out4),
			.s5(out5),
			.s6(out6),
			.s7(out7));

endmodule
