module tb;
  reg[3:0]a,b;
  
  initial begin
    a=4'b1000;
    b=4'b101x;
    #10;
    $display("Result of equality oprator:%0d",(a===b));
    $display("Result of not equality oprator:%0d",(a!==b));


  end
endmodule

/* 			Result of equality oprator:0
 			Result of not equality oprator:1        */
