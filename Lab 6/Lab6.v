module myfulladd(A, B, CIN, SOUT, COUT);
	input A,B,CIN;
	output SOUT, COUT;
	assign SOUT = CIN ^ (A ^ B);
	assign COUT = (CIN & (A ^ B)) | (A & B);
endmodule

module myadder4(A, B, CIN, S, V, COUT);
	input CIN;
	input [3:0]A, B;
	output [3:0]S;
	output COUT, V;
	wire [3:1]C;

	myfulladd F0(A[0], B[0], CIN, S[0], C[1]);
	myfulladd F1(A[1], B[1], C[1], S[1], C[2]);
	myfulladd F2(A[2], B[2], C[2], S[2], C[3]);
	myfulladd F3(A[3], B[3], C[3], S[3], COUT);
	
	assign V = C[3] ^ COUT;
	
endmodule

module myALU4(P, A, B, R, Z, V, C4);
	input [3:0]P, A, B;
	output [3:0]R;
	output Z,V,C4;
	reg [3:0]Y;
	
	always @(*)
	
	case({P[2:1]})
	2'b00: Y = B;
	2'b01: Y = ~B;
	2'b10: Y = 4'b0000;
	2'b11: Y = 4'b1111;
	endcase
	
	
	myadder4(A,Y,P[0],R,V,C4);
	assign Z = ~(R[0]+R[1]+R[2]+R[3]);
	
endmodule
