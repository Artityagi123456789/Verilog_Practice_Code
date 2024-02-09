//with all inputs in sensitivity list

module tb();
reg temp;
reg a,b;
reg c;  
 
  
  initial begin
  a = 1'b0;
  b = 1'b0;
  temp = 1'b1;
    #10;
  temp = 1'b0; 
  end
  
  
  function oring (input a,b);
    begin
    oring = a | b;
    end
  endfunction
   
  always@(a,b)
    begin
      c = oring(a,temp);
    end  
  
  initial begin
    $monitor("a:%0b, temp : %0b, c : %0b",a,temp,c);
  end
  
endmodule


//use 2: with * in sensitivity list

module tb();
reg temp;
reg a,b;
reg c;  
 
  
  initial begin
  a = 1'b0;
  b = 1'b0;
  temp = 1'b1;
    #10;
  temp = 1'b0; 
  end
  
  
  function oring (input a,b);
    begin
    oring = a | b;
    end
  endfunction
  
  always@(*)
    begin
      c = oring(a,temp);
    end  
  
  initial begin
    $monitor("a:%0b, temp : %0b, c : %0b",a,temp,c);
  end
  
endmodule




