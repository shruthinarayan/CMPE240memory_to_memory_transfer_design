
//declare the Verilog module - The inputs and output signals.
module comparator(input [7:0]DOut2,input [7:0]DOut1,output reg Sign);

   wire [7:0]diff;
   assign diff=DOut2-DOut1;
    //When the inputs and A or B are changed execute this block
    always @(DOut2 or DOut1)
     begin
        if(diff[7]==0) 
           Sign=1;
        else 
         Sign=0;
    end
endmodule