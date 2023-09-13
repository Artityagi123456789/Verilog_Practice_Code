`include "and_mux.v"

module tb;
reg[1:0] i;
reg sel;
wire y;

mux2x1 andmux(i,sel,y);

initial begin
always@(*)
begin
if(sel==0)  y=0;
else if(sel==1)  y=b;
else y=b
end
end

$display("a=%b,i=%b,y=%b",sel,i,y);
end

endmodule
