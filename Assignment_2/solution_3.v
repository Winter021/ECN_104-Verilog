
/* Enroll Number : 20114079 ;
 number 1 (Largest Digit) : 9 ;
 number 2 largest + Least-Significant Digit   : 9+9 = 18 ;

    9 +18 = 27 ;
*/

module turing(clk , result ,done );

input clk ;
output reg done ;
output reg [31:0] result ;

`define SYMB_A     2'b00 
`define SYMB_ADD   2'b01
`define SYMB_BLANK 2'b10

reg [1:0] tape [29:0];
reg back ;
integer n1 , n2 ;

initial begin 

    result = 32'b0 ;
    back = 0 ;
    done =  0 ;

    tape[0] = `SYMB_BLANK ;


    for(n1 = 1 ; n1 <=9 ; n1 = n1 +  1)begin
        tape[n1] = `SYMB_A ;
    end

    tape[10] = `SYMB_ADD ;
    
    for(n2 = 11 ; n2 <= 28 ; n1 = n1 +  1)begin
        tape[n1] = `SYMB_A ;
    end
    
    tape[29] = `SYMB_BLANK ;


end 


integer head = 1 ;

always @(posedge clk ) begin

    if (head !=0 && tape[head ] == `SYMB_A)
    begin
        if(back == 0 )
        begin
            head = head +1 ;
        end

        else begin 
            head = head + 1 ;
            result = result + 1;
        end 

    end

    if(head <= 0 )
    begin
        done = 1 ; 

    #10
    $finish ;

    end

    if(tape[head] == `SYMB_ADD)
    begin
        tape[head] = `SYMB_A ;
        tape[28]   = `SYMB_BLANK ;
    end

if (tape[head == `SYMB_BLANK]) begin
    
    back = 1 ;
    head = head - 1 ;

end



end



endmodule