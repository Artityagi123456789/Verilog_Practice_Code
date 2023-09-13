`include "nand_mux.v"

input[1:0]i;
input sel;
output reg y;

mux2x1 andmux(i,sel,y);

initial begin
always@(*)
begin
if(a==0)  y=1;
else if(a==1)  y=~b;
else y=~b
end

end

 $display("a=%b,i=%b,y=%b",sel,i,y);

 
end

endmodule

