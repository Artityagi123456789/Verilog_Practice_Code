//FULL ADDER USING HALF ADDER USING HIERARCHICAL DESIGNING IN VERILOG

module FA(sum,carry,a,b,c);
input a, b, c; 
output sum, carry; 
wire w1, w2, w3; 
half_adder HA1(w1, w2, a, b); //instance 1 of Half Adder
half_adder HA2(sum, w3, c,w1); //instance 2 of Half Adder
or or1(carry,w1,w2); 

endmodule


module half_adder(sum,carry,a,b);
input a,b;
output sum,carry;

xor g1(sum,a,b);
xor g2(carry,a,b);


endmodule
