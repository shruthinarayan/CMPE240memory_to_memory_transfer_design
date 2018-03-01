
module comp_test;

  reg [7:0]DOut2;
reg [7:0]DOut1;
wire Sign;
    // Instantiate the Unit Under Test (UUT)
    comparator uut (DOut2,DOut1,Sign);

    initial
 begin
        DOut2 = 8'b00000000;
        DOut1 = 8'b00000001;
        #50;
        DOut2 = 8'b00000000;
        DOut1 = 8'b00000000;
        #50;
        DOut2 = 8'b00000001;
        DOut1 = 8'b00000000;
        #50;
    end
      
endmodule