//testbench for Full adder

`include"FA_bhv.v"

module tb_B;
reg a,b,c;
wire sum,cout;

FA_bhv Fa(a,b,c,sum,cout);
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



