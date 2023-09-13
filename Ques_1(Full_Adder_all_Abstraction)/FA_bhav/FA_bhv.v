module FA_bhv(a,b,c,sum,cout);
input a,b,c;
output reg sum,cout;

always@(*)
begin
//FA input for sum
case ({a,b,c})
3'b000: sum=0;
3'b001: sum=1;
3'b010: sum=1;
3'b011: sum=0;
3'b100: sum=1;
3'b101: sum=0;
3'b110: sum=0;
3'b111: sum=1;
default: sum=0;
endcase

// Full Adder carry 
case ({a,b,c})
3'b000: cout=0;
3'b001: cout=0;
3'b010: cout=0;
3'b011: cout=1;
3'b100: cout=0;
3'b101: cout=1;
3'b110: cout=1;
3'b111: cout=1;
default: cout=0;
endcase
end

endmodule
