module mux(input [7:0]ADDOut,input [7:0]SUBOut,input Sign,output [7:0]DataInB);

assign DataInB=Sign ? ADDOut : SUBOut;
endmodule