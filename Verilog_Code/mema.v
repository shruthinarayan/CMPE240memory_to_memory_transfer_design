
module memoryA(input WEA,input clock, input[7:0]DataInA, input[2:0]AddrA,output reg [7:0]DOut1);

reg [7:0]MemA[0:7];

always @(posedge clock)
begin

if (WEA)
begin
MemA[AddrA] <= DataInA;
end

else
DOut1 <= MemA[AddrA];

end
endmodule