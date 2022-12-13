module JKflip(J, K, Out, In, Clk);
input J, K, Clk;
input In;
output reg Out;

always @ (posedge Clk) begin
case({J,K})
2'b00: Out = In;
2'b01: Out = 0;
2'b10: Out = 1;
2'b11: Out = ~In;
endcase
end
endmodule
