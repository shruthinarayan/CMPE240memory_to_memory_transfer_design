module cont(input clock,input Reset, output reg IncA, output reg IncB, output reg WEA, output reg WEB);

reg [4:0]ps,ns;

always @ (posedge clock)
begin

ps=ns;

if (Reset)
 begin
IncA <= 1'b0;
IncB <= 1'b0;
WEA <= 1'b0;
WEB <= 1'b0;
ns<=5'd0;
end

else
begin

case (ps)

5'd0:
begin
IncA <= 1'b1;
WEA <= 1'b1;
ns<=5'd1;
end

5'd1:
begin
ns<=5'd2;
end

5'd2:
begin
ns<=5'd3;
end

5'd3:
begin
ns<=5'd4;
end

5'd4:
begin
ns<=5'd5;
end

5'd5:
begin
ns<=5'd6;
end

5'd6:
begin
ns<=5'd7;
end

5'd7:
begin
ns<=5'd8;
end

5'd8:
begin
WEA <= 1'b0;
ns<=5'd9;
end

5'd9:
begin
ns<=5'd10;
end

5'd10:
begin
WEB <= 1'b1;
ns<=5'd11;
end

5'd11:
begin
IncB <= 1'b1;
WEB <= 1'b0;
ns<=5'd12;
end

5'd12:
begin
IncB <= 1'b0;
WEB <= 1'b1;
ns<=5'd13;
end

5'd13:
begin
IncB <= 1'b1;
WEB <= 1'b0;
ns<=5'd14;
end

5'd14:
begin
IncB <= 1'b0;
WEB <= 1'b1;
ns<=5'd15;
end

5'd15:
begin
IncB <= 1'b1;
WEB <= 1'b0;
ns<=5'd16;
end

5'd16:
begin
IncA <= 1'b0;
IncB <= 1'b0;
WEB <= 1'b1;
ns<=5'd17;
end

5'd17:
begin
IncB <= 1'b1;
WEB <= 1'b0;
ns<=5'd18;
end

5'd18:
begin
IncB <= 1'b0;
ns<=5'd0;
end

endcase

end
end

endmodule

