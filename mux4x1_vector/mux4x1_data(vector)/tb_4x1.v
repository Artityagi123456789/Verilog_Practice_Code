`include "mux4x1_data.v"

module tb_4x1;

reg[3:0]i;
reg[1:0]sel;

wire out;

mux4x1_data mux(i,sel,out);

initial begin
    repeat(6) begin
    sel0 =$random();
	sel1 = $random();
	i0 = $random();
	i1 = $random();
	i2 = $random();
	i3 = $random();
	#5;
$display("sel0=%b , sel1=%b , i3=%b , i2=%b , i1=%b , i0=%b ,  out=%b" , sel0, sel1,i3,i2,i1,i0, out);
	end
  end 	

endmodule
