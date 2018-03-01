
module memB(input WEB,input clock,input[7:0]DataInB, input[1:0]AddrB);

reg [7:0]MemB[0:3];

always @(posedge clock)
begin

if (WEB)
begin
MemB[AddrB] <= DataInB;
end

end
endmodule