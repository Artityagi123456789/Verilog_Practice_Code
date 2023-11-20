`include "full_add.v"
module tb;
  reg [1:0]a,b;
  reg cin;
  wire [1:0]sum;
  wire cout;
  full_add dut(sum,cout,a,b,cin);

	initial begin
	a=2'b00; b=2'b00; cin=1'b0;

	a=2'b00; b=4'b01; cin=1'b1;
	#10;

	a=2'b00; b=2'b10; cin=1'b0;
	#10;

	a=2'b11; b=2'b11; cin=1'b1;
	#10;

	$display("\ta=%0b, b=%0b, cin=%0b -> sum=%0b cout=%b" , a,b,cin,sum,cout);
	end




 endmodule
