

module uptestthree;
reg IncA;
reg Reset;
reg clock;
wire [2:0]AddrA;

upcounterthree c1(IncA,Reset,clock,AddrA);
initial 
begin
Reset=1;
IncA=0;
clock=0;
#5 Reset=0;
IncA=1;
end



always #1 clock=~clock;
always #90 Reset=~Reset;
always #20 IncA=~IncA;

endmodule