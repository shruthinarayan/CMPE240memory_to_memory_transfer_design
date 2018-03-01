
module muxtest;
reg [7:0]ADDOut;
reg [7:0]SUBOut;
reg Sign;
wire [7:0]DataInB;

mux m(ADDOut,SUBOut,Sign,DataInB);
initial begin
ADDOut=8'd10;
SUBOut=8'd11;
Sign=1'b0;
end

always #5 ADDOut=~ADDOut;
always #10 SUBOut=~SUBOut;
always #16 Sign=~Sign;

endmodule
