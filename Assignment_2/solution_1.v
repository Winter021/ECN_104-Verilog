
// inverting buffer
module  problem_1_1(  result , input1);

input input1;
output result;

not n1(result ,input1);


endmodule

// non-inverting buffer 
module problem_1_2( result , input1);


input input1;
output result ;

wire temp0 ;

problem_1_1 g1(temp0 , input1);
problem_1_1 g2(result , temp0);


endmodule

// ring oscillator
`timescale 1ns/1ps
module problem_1_4( result , input1);

    input input1 ;
    output reg result ;
    
    reg rg1, rg2, rg3 , rg4 ;

    initial begin 
        result = input1 ;
    end
     
    always @ (result) begin
        
        #5 rg1    <= ~ result ;
        #5 rg2    <= ~ rg1;
        #5 rg3    <= ~ rg2;
        #5 rg4    <= ~ rg3;
        #5 result <= ~ rg4;

    end

endmodule