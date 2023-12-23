module and2_lut(address ,result );

    input [1:0] address ;
    reg [3:0] LUT[1:0] ;
    output result ;

    initial begin
        LUT[0][0] = 0 ;
        LUT[0][1] = 0 ;
        LUT[1][0] = 0 ;
        LUT[1][1] = 1 ;
    end

    assign result = LUT[address[0]][address[1]];


endmodule


module and4_lut(address , result );

output result ;
input [3:0] address ;

reg[1:0] rg1 ;
reg[1:0] rg2 ;
reg[1:0] rg3 ;

initial 
begin

rg1[0] = address [0];
rg1[1] = address [1];
rg2[0] = address [2];
rg2[1] = address [3];

end


and2_lut L1( rg1 , rg3[0]);
and2_lut L2( rg2 , rg3[1]);
and2_lut L3( rg3 , result);

endmodule

`timescale 1ns/1ps

module equation_lut(a, b, c ,d ,result );

input a ,b , c ,d  ;
output result ; 

reg LUT[1:0][1:0][1:0][1:0];
reg [1:0] address [1:0];

initial 
begin


    LUT[0][0][0][0] = 1 ;
    LUT[0][0][0][1] = 0 ;
    LUT[0][0][1][0] = 0 ;
    LUT[0][0][1][1] = 1 ;
    LUT[0][1][0][0] = 1 ;
    LUT[0][1][0][1] = 0 ;
    LUT[0][1][1][0] = 0 ;
    LUT[0][1][1][1] = 1 ;
    LUT[1][0][0][0] = 0 ;
    LUT[1][0][0][1] = 1 ;
    LUT[1][0][1][0] = 1 ;
    LUT[1][0][1][1] = 0 ;
    LUT[1][1][0][0] = 0 ;
    LUT[1][1][0][1] = 1 ;
    LUT[1][1][1][0] = 1 ;
    LUT[1][1][1][1] = 1 ;


    address[0][0] = a ;
    address[0][1] = b ;
    address[1][0] = c ;
    address[1][1] = d ;

end


assign result = LUT[address[0][0]][address[0][1]][address[1][0]][address[1][1]];

endmodule