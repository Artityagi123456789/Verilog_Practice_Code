`include "mux4x1_data.v"

module tb_4x1;

reg i0,i1,i2,i3;
reg s0,s1;

wire out;

mux4x1_data mux(out,i0,i1,i2,i3,s0,s1);

initial begin
    repeat(6) begin
    s0 =$random();
	s1 = $random();
	i0 = $random();
	i1 = $random();
	i2 = $random();
	i3 = $random();
	#5;
$display("s0=%b , s1=%b , i3=%b , i2=%b , i1=%b , i0=%b ,  out=%b" , s0, s1,i3,i2,i1,i0, out);
	end
  end 	

endmodule
