module myfulladd(A, B, CIN, SOUT, COUT);
	input A,B,CIN;
	output SOUT, COUT;
	assign SOUT = CIN ^ (A ^ B);
	assign COUT = (CIN & (A ^ B)) | (A & B);
endmodule

module myadder4(A, B, CIN, S, COUT, V);
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
