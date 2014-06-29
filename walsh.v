/* 

Walsh-Hadamard transformation, with an inelastic pipeline 

Author : Thomas E. Bourgeat (2014)
*/

module walsh(i0,i1,i2,i3,i4,i5,i6,i7, clock,s0,s1,s2,s3,s4,s5,s6,s7);

	input i0,i1,i2,i3,i4,i5,i6,i7;
	input clock;
	
	reg [2:0] s0_0,s0_1,s0_2,s0_3,s0_4,s0_5,s0_6,s0_7;
	reg [2:0] s1_0,s1_1,s1_2,s1_3,s1_4,s1_5,s1_6,s1_7;
	reg [3:0] s2_0,s2_1,s2_2,s2_3,s2_4,s2_5,s2_6,s2_7;
	reg [4:0] s3_0,s3_1,s3_2,s3_3,s3_4,s3_5,s3_6,s3_7;
	output [4:0] s0,s1,s2,s3,s4,s5,s6,s7;
	
	assign s0 = s3_0;
	assign s1 = s3_1;
	assign s2 = s3_2;
	assign s3 = s3_3;
	assign s4 = s3_4;
	assign s5 = s3_5;
	assign s6 = s3_6;
	assign s7 = s3_7;

always @(posedge clock) begin

	s3_0 <= $signed(s2_0) + $signed(s2_1);
	s3_1 <= $signed(s2_0) - $signed(s2_1);
	s3_2 <= $signed(s2_2) + $signed(s2_3);
	s3_3 <= $signed(s2_2) - $signed(s2_3);
	s3_4 <= $signed(s2_4) + $signed(s2_5);
	s3_5 <= $signed(s2_4) - $signed(s2_5);
	s3_6 <= $signed(s2_6) + $signed(s2_7);
	s3_7 <= $signed(s2_6) - $signed(s2_7);

	s2_0 <= $signed(s1_0) + $signed(s1_2);
	s2_1 <= $signed(s1_1) + $signed(s1_3);
	s2_2 <= $signed(s1_0) - $signed(s1_2);
	s2_3 <= $signed(s1_1) - $signed(s1_3);
	s2_4 <= $signed(s1_4) + $signed(s1_6);
	s2_5 <= $signed(s1_5) + $signed(s1_7);
	s2_6 <= $signed(s1_4) - $signed(s1_6);
	s2_7 <= $signed(s1_5) - $signed(s1_7);
	
	s1_0 <= $signed(s0_0) + $signed(s0_4);
	s1_1 <= $signed(s0_1) + $signed(s0_5);
	s1_2 <= $signed(s0_2) + $signed(s0_6);
	s1_3 <= $signed(s0_3) + $signed(s0_7);
	s1_4 <= $signed(s0_0) - $signed(s0_4);
	s1_5 <= $signed(s0_1) - $signed(s0_5);
	s1_6 <= $signed(s0_2) - $signed(s0_6);
	s1_7 <= $signed(s0_3) - $signed(s0_7);

	s0_0 <= {1'b0,i0};
	s0_1 <= {1'b0,i1};
	s0_2 <= {1'b0,i2};
	s0_3 <= {1'b0,i3};
	s0_4 <= {1'b0,i4};
	s0_5 <= {1'b0,i5};
	s0_6 <= {1'b0,i6};
	s0_7 <= {1'b0,i7};

end

endmodule



