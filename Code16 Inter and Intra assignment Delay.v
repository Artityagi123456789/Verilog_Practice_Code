module tb();
 
reg a,b;
  
///Inter assg delay
  
  /* So when you use delay on LHS, so they are termed as an inter assignment delay.*/
  
  initial begin
   #5 a <= 1'b1; 
  end
 
///Intra assg delay
  
  /* So when you use delay on RHS, so they are termed as an intera assignment delay.*/

  initial begin
  b <= #10 a;
  end
  
  initial begin
    $monitor("Value of a: %0b and b : %0b at time : %0t",a,b,$time);
  end 
endmodule

