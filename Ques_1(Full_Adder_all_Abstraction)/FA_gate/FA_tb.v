`include"FA_gate.v"
module Tb_g;
reg a,b,c;
wire sum,cout;

FA_gate FA(a,b,c,sum,cout);

initial begin
a=1'b0;
b=1'b0;
c=1'b0;
#10;

a=1'b0;
b=1'b0;
c=1'b1;
#10;

a=1'b0;
b=1'b1;
c=1'b0;
#10;

a=1'b0;
b=1'b1;
c=1'b1;
#10;

a=1'b1;
b=1'b0;
c=1'b0;
#10;

a=1'b1;
b=1'b0;
c=1'b1;
#10;

a=1'b1;
b=1'b1;
c=1'b0;
#10;

a=1'b1;
b=1'b01;
c=1'b1;
#10;

$finish;
end 
endmodule
