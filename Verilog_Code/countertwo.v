

module upcountertwo(input IncB,input Reset,input clock,output reg [1:0]AddrB);

always @(posedge clock)
begin

if(Reset==1)
begin
AddrB<=2'b0;
end

else
begin
if(IncB==1)
begin
AddrB<=AddrB+2'b01;
end

end


end

endmodule