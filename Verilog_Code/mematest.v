
module test_memoryA;

reg WEA;
reg clock;
reg [7:0]DataInA;
reg [2:0]AddrA;
wire [7:0]DOut1;

memoryA ma1(WEA,clock, DataInA, AddrA, DOut1);

initial
begin
WEA=1'b0;
DataInA=8'b0;
AddrA=3'b0;
clock=0;
#10 WEA=1'b1;
DataInA=8'd5;

#10 WEA=1'b0;
AddrA=3'd3;
#10 WEA=1'b1;
DataInA=8'd21;

#10 WEA=1'b0;
//#100 $finish;
end
always #1 clock=~clock;

endmodule