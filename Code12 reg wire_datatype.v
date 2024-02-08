//Use 1: Simple Cirucits with Operators

module ha(
input a,b,
 output s,c
);
  
assign s = a ^ b;  
assign c = a & b; //operators arithmetic,logical or ternary 
  
endmodule


//Use 2: Undefined nets in Structural Modeling Style

module fa(
input ain,bin,cin,
output sout,cout
);
 
wire t1,t2,t3;  
  
ha h1 (ain,bin,t1,t2);
ha h2 (t1,cin,sout,t3);
  
assign cout = t2 | t3;
  
endmodule


//Use 3: Connecting reg datatypes to port

module tand(a,b,c);
input a,b;
output wire c;
 
  reg temp;
  
  
  always@(a,b)
    begin
      temp = a & b;
    end
  
assign c = temp;
  
endmodule

