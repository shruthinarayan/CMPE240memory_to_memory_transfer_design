

module addert_b;
reg [7:0]DOut2;
reg [7:0]DOut1;
wire [7:0]ADDOut;

add uut (DOut2,DOut1,ADDOut);

initial begin

 DOut2=8'd7;
 DOut1=8'd7;                     //  ?This is input a=0,b=0

#10 DOut2=8'd3;
#10 DOut1=8'd1;//                        ?This is input a=0,b=1

#10 DOut2=8'd9;
#10 DOut1=8'd10;//                        ?This is input a=1,b=0

#10 DOut2=8'd10;
#10 DOut1=8'd10;//                         ?This is input a=1,b=1



end

endmodule
