module solution_2_1( in1 , in2 , select , result );

input in1 , in2 , select ;
output result ;

assign result = select ? in2 : in1 ; 


endmodule 



`timescale 1ns/1ps
module multiplexer(in1 , in2 , select , result );

input in1 , in2 , select ;
output result ;

assign #2 result = select ? in2 : in1 ;

endmodule