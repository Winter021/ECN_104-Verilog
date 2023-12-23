`timescale 1ns/1ps

module tb_1_1; //inverting buffer 

    reg input1;
    reg FailCount ;
    wire output1 ;


    initial begin
        FailCount = 0 ;
        input1 = 1'b0;

        #25

        input1 = ~input1 ;
        #25

    if(FailCount == 0 )
    begin
        $display("   All Test-Cases Passed   ");
    end

    else begin
        $display(" SOME TESTCASES FAILED ");
    end

    $finish;

    end

 problem_1_1 p1(output1 , input1);

always @ (output1)
begin
    
    if(output1 == ~input1)
    begin
        $display("Test-Case PASSED for : ",
        "Input : %b ", input1 ,
        "Output : %b ", output1 );        
    end

    else 
    begin
         $display("Test-Case FAILED for : ",
        "Input : %b ", input1 ,
        "Output : %b ", output1 ); 
        FailCount = FailCount + 1 ;
    end


end


endmodule



// Non - Inverting Buffer
module tb_1_2 ; 

    reg input1 ;
    reg FailCount ;
    wire output1 ;

    initial begin
        
        FailCount = 0 ; 
        input1 = 1'b0 ;

        #25

        if(FailCount == 0)
        begin
            $display(" ALL TEST CASES PASSED ");
        end

        else
        begin
            
            $display (" SOME TEST-CASES FAILED ");

        end

        $finish ;

    end


        problem_1_2 p2( output1 , input1 );

        always @(output1) begin
            
            if(output1 == input1) begin
            $display ("Test case passed for : ",
            "Input : %b ",input1,
            "Output : %b ",output1 );
            end

            else begin
                $display (" Test case FAILED for : ",
                "Input : %b ",input1 ,
                "Output : %b ", output1);
                FailCount = FailCount + 1 ; 
            end


        end


    
endmodule




// ringOscillator
module tb_1_4 ;

        reg input1 ;
        wire result ;

        problem_1_4 p4(result ,input1 );

        initial begin
             input1 = 1'b0 ;
        end

        initial begin
             #1000
             $display (" CLOCK WORKS PROPERLY ");
             $finish ;
        end

endmodule
