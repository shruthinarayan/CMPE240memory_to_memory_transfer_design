
module hst_b;

reg a;

reg b;

wire different;

wire borrow;

hs uut (a,b,different,borrow);

initial
begin

#10 a=1'b0;
#10 b=1'b0;

#10 a=1'b0;b=1'b1;

#10 a=1'b1;b=1'b0;

#10 a=1'b1;b=1'b1;

#10$stop;

end

endmodule