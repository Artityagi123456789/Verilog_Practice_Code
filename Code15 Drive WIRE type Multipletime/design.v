// Code your design here
/*you'll be finding the value for the old is always X.
 so it is illegal to try to wire data type multiple times. */

module top (
input a1,a2,a3,a4,en1,en2,
output dout
);
  
wire temp;
  
 //tri-state net type
  assign temp = (en1 == 1) ? (a1 & a2) : 1'bz;
  assign temp = (en2 == 1) ? (a3 & a4) : 1'bz;
  
assign dout = temp; 
  
endmodule
