module main (input clock,Reset,[7:0]DataInA);

wire WEA,WEB,IncA,IncB,Sign;
wire [2:0] AddrA;
wire [1:0] AddrB;
wire [7:0] DOut1,DOut2,ADDOut,SUBOut,DataInB;

/*Call all the modules*/
cont c1(clock, Reset,IncA,IncB,WEA,WEB);
comparator c3(DOut2,DOut1,Sign);
dff d1(clock,DOut1,DOut2);
add aa1(DOut2,DOut1,ADDOut);
sub as1(DOut2,DOut1,SUBOut);
mux m1(ADDOut,SUBOut,Sign,DataInB);
memoryA ma1(WEA,clock, DataInA, AddrA, DOut1);
memB mb1(WEB,clock,DataInB, AddrB);
upcountertwo c4(IncB,Reset,clock,AddrB);
upcounterthree c2(IncA,Reset,clock, AddrA);


endmodule

