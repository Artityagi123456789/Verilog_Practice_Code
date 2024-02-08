module tb;
  reg[3:0]a,b;
  
  initial begin
    a=4'b1000;
    b=4'b1010;
    #10;
    $display("Result of equality oprator:%0d",(a==b));
    $display("Result of not equality oprator:%0d",(a!=b));
	
  end
endmodule

/*  NOTE:
			So equality operator and inequality operator do not works well with X or Z.
			And so to handle that situation, we have another category of verilog , two different operators to handle sitution. */
