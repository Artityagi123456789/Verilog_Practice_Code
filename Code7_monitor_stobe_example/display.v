module top;
  bit [3:0]var1,var2;
  integer i;
    initial begin   
      $monitor("\t$monitor: var1=%0d,Var2=%0d",var1,var2);
      for(i=0; i<2; i=i+1)begin
        $display("\t$display: var1=%0d,Var2=%0d",var1,var2);
        $strobe("\tstobe: var1=%0d,Var2=%0d",var1,var2);
        
        case(i)
          0 : var1=3;
          1 : var2=4;
          2 : begin end
          3 : {var1,var2} = 7;
          
        endcase
        $display("\t$display: var1=%0d,Var2=%0d",var1,var2);
      end 
    end 
endmodule 

//Output
run -all
 //	$display: var1=0,Var2=0
//	$display: var1=3,Var2=0
// 	$display: var1=3,Var2=0
// 	$display: var1=3,Var2=4
//	$monitor: var1=3,Var2=4
//	$stobe: var1=3,Var2=4
Done
