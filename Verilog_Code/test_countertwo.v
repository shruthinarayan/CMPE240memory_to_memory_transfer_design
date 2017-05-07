


module uptesttwo;
reg IncB;
reg Reset;
reg clock;
wire [1:0]AddrB;

upcountertwo c1(IncB,Reset,clock,AddrB);
initial 
begin
Reset=1;
IncB=0;
clock=0;
#5 Reset=0;
IncB=1;
end



always #1 clock=~clock;
always #90 Reset=~Reset;
always #20 IncB=~IncB;

endmodule