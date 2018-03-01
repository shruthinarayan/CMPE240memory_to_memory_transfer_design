module tb_controller;
reg clock, Reset;
wire WEA,WEB,IncA,IncB;

controller c1(clock, Reset,WEA,WEB,IncA,IncB);

initial begin
clock=1'b0;
Reset=1'b1;
#2 Reset=1'b0;
#100 $finish;
end

always #1 clock=~clock;

endmodule

