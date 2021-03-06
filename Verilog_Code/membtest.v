
module test_memoryB;

reg WEB;
reg clock;
reg [7:0]DataInB;
reg [1:0]AddrB;

memB mb1(WEB,clock, DataInB, AddrB);

initial
begin
WEB=1'b0;
DataInB=8'b0;
AddrB=2'b0;
clock=0;
#10 WEB=1'b1;
AddrB=2'b11;
DataInB=8'd5;

#10 WEB=1'b0;

end

always #1 clock=~clock;

endmodule