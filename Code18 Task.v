module tb(); 
  reg [3:0] i1 = 10;
  reg [3:0] i2 = 10;
  reg [4:0] ao;
  reg [7:0] mo;
  
  task add_mul();
    begin
    ao = i1+i2;
    mo = i1*i2;
      #10;
      $display("result of mul : %0d and add : %0d",mo,ao);
    end
  endtask
  
  initial begin
    add_mul();
  end 
endmodule

