
// Counter has been completed for you.
module Counter(
input Clock,
input Reset,
input Dir,
input CntEn,
input Load,
input [2:0] New,
output reg [2:0] Count);
always @(posedge Clock) begin
if (Reset == 1)
Count <= 3'b001;
else begin
if (CntEn == 1) begin
if (Load == 1)
Count <= New;
else begin
if (Dir == 1)
Count <= Count + 
1;
else
Count <= Count - 
1;
end
end
end
end
endmodule



// UpControl has been completed for you as well.
module UpControl(
input [2:0] Count,
output Load,
output [2:0] New);
// The following statement means if Count equals 5,
// set Load equal to 1, otherwise set it equal to 0.
assign Load = (Count == 3'b101) ? 1'b1 : 1'b0;
assign New = 3'b001;
endmodule
// Fill in DownControl. Note that because the signal
// names are internal to the module, you can reuse
// the same names as in UpControl for simplicity.


module DownControl(
input [2:0] Count,
output Load,
output [2:0] New);
// The following statement means if Count equals 5,
// set Load equal to 1, otherwise set it equal to 0.

assign Load = (Count == 3'b001) ? 1'b1 : 1'b0;
assign New = 3'b101;

endmodule




// WinLose has been partially completed for you.
module WinLose(
input Stop,
input [2:0] UpCount,
input [2:0] DownCount,
output reg CntEn,
output reg Lose,
output reg Win);
// Fill in the logic for the always block.
// Refer to Counter for a guide on syntax.
always @(*) begin
	if(Stop == 1) begin
		CntEn = 0;
		if(UpCount == DownCount) begin
			Win = 1;
			Lose = 0;
			end
		else begin
			Win = 0;
			Lose = 1;
			end
		end
		else begin
		CntEn = 1;
		Win = 0;
		Lose = 0;
		end
		
end
endmodule