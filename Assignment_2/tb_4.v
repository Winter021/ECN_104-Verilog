`timescale 1ns/1ps

module and2_lut_tb;

    reg[1:0] address ;
    wire result ;

    and2_lut L1(address ,result) ;

    initial 
    begin

    address = 2'b00;
    #25
    address = 2'b01;
    #25
    address = 2'b10;
    #25
    address = 2'b11;
    #25

$finish;
    end

always @(address) begin
    
        if(result == (address[0] && address[1])  )
        begin
            $display("Test Case PASSED for : ",
            "address[0] : %b ", address[0]
            ,"address[1] : ",address[1],
            "result : %b ",result );
            
        end

        else
        begin

            $display("Test Case FAILED for : ",
            "address[0] : %b ", address[0]
            ,"address[1] : ",address[1],
            "result : %b ",result );
            
        end
end

endmodule


`timescale 1ns/1ps

module and4_lut_tb;

reg [3:0] address ;
wire result ;

initial 
begin

    address = 4'b0000;
    
    #25 address = 4'b0001;
    #25 address = 4'b0001;
    #25 address = 4'b0010;
    #25 address = 4'b0011;
    #25 address = 4'b0100;
    #25 address = 4'b0101;
    #25 address = 4'b0110;
    #25 address = 4'b0111;
    #25 address = 4'b1000;
    #25 address = 4'b1001;
    #25 address = 4'b1010;
    #25 address = 4'b1011;
    #25 address = 4'b1100;
    #25 address = 4'b1101;
    #25 address = 4'b1110;
    #25 address = 4'b1111;

    #25
    $finish ;

end

always @(address )
begin
    
    if(result == (address[0] && address[1] &&address[2]&&address[3])) 
    begin
     $display("Test Case PASSED for : ",
            "address[0] : %b ", address[0]
            ,"address[1] : ",address[1],
            "address[2] : ",address[2],
            "address[3] : ",address[3],
            "result : %b ",result );
            
    end

    else
    begin
         $display("Test Case FAILED for : ",
            "address[0] : %b ", address[0]
            ,"address[1] : ",address[1],
            "address[2] : ",address[2],
            "address[3] : ",address[3],
            "result : %b ",result );
            
    end

end

endmodule



`timescale 1ns/1ps

module equation_lut_tb;

    reg a ,b ,c , d ;
    wire result ;

    initial begin

        a = 0 ; b = 0 ; c = 0 ; d = 1 ;
        #10
        a = 0 ; b = 0 ; c = 1 ; d = 0 ;
        #10
        a = 0 ; b = 0 ; c = 1 ; d = 0 ;
        #10
        a = 0 ; b = 0 ; c = 1 ; d = 1 ;
        #10
        a = 0 ; b = 1 ; c = 0 ; d = 0 ;
        #10
        a = 0 ; b = 1 ; c = 0 ; d = 1 ;
        #10
        a = 0 ; b = 1 ; c = 1 ; d = 0 ;
        #10
        a = 0 ; b = 1 ; c = 1 ; d = 1 ;
        #10
        a = 1 ; b = 0 ; c = 0 ; d = 0 ;
        #10
        a = 1 ; b = 0 ; c = 0 ; d = 1 ;
        #10
        a = 1 ; b = 0 ; c = 1 ; d = 0 ;
        #10
        a = 1 ; b = 0 ; c = 1; d = 1 ;
        #10
        a = 1 ; b = 1 ; c = 0 ; d = 0 ;
        #10
        a = 1 ; b = 1 ; c = 0 ; d = 1 ;
        #10
        a = 1 ; b = 1 ; c = 1 ; d = 0 ;
        #10
        a = 1 ; b = 1 ; c = 1 ; d = 1 ;
        #10

        $finish;

    end

    always @(a) begin #15

    if( result == (! ( (c^a)^d || (a & b & c & d)  )))
        begin
            $display("TEST CASES PASSED for : "
            ,"a : %b", a 
            ,"b : %b ",b
            ,"c : %b ",c
            ,"d : %b ",d
            ,"result : %b ", result); 
        end

        else begin
            $display("TEST CASES FAILED for : "
            ,"a : %b", a 
            ,"b : %b ",b
            ,"c : %b ",c
            ,"d : %b ",d
            ,"result : ", result); 
        end


    end

endmodule