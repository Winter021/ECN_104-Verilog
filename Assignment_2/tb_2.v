`timescale 1ns/1ps

module tb_2_1;

reg in1 , in2 ;
reg select ;

wire result ;
integer  FailCount;

    solution_2_1 S1(select ,result ,input2 ,input1);


    initial begin #5
        
        if( ( (select == 0) && result == in1 ) )begin
            $display(" ALL OK ","Select : %b ",select ,
            "Input : %b ",in1,
            "Result : %b ",result);
    end

          else if( ( (select == 1) && result == in2 ) )begin
            $display("ALL OK","Select : %b ",select ,
            "Input : %b ",in2,
            "Result : %b ",result);
    end


    else
    begin
        FailCount = FailCount + 1 ;
        $display("Test Case Failed with : ",
        "Select : %b ",select ,
        "Result : %b ", result );
    end


    forever begin #10 
        
        if( ( (select == 0) && result == in1 ) )begin
            $display(" ALL OK ","Select : %b ",select ,
            "Input : %b ",in1,
            "Result : %b ",result);
    end

          else if( ( (select == 1) && result == in2 ) )begin
            $display("ALL OK","Select : %b ",select ,
            "Input : %b ",in2,
            "Result : %b ",result);
    end


    else
    begin
        FailCount = FailCount + 1 ;
        $display("Test Case Failed with : ",
        "Select : %b ",select, 
        "Result : %b ", result );
    end


    end


    end


    initial begin
         FailCount = 0 ;
         select    = 0 ;  
         in1    = 0 ; 
         in2    = 0 ; 

#100 

if(FailCount != 0 )
begin
    $display( "   TEST CASES FAILED   " );
end

    else begin
        $display ("   ALL TEST CASES PASSED    ");
    end

    $finish ;

    end


    always #50  in1 = ~in1 ;
    always #25  in2 = ~in2 ;
    always #12  select = ~select ;



endmodule

module multiplexer;

reg in1 , in2 ;
reg select ;
wire result ;

integer  FailCount;

multiplexer S2(select ,result ,input2 ,input1  );

initial begin #5
        
        if( ( (select == 0) && result == in1 ) )begin
            $display(" ALL OK ","Select : %b ",select ,
            "Input : %b ",in1,
            "Result : %b ",result);
    end

          else if( ( (select == 1) && result == in2 ) )begin
            $display("ALL OK","Select : %b ",select ,
            "Input : %b ",in2,
            "Result : %b ",result);
    end


    else
    begin
        FailCount = FailCount + 1 ;
        $display("Test Case Failed with : ",
        "Select : %b ",select ,
        "Result : %b ", result );
    end


    forever begin #10 
        
        if( ( (select == 0) && result == in1 ) )begin
            $display(" ALL OK ","Select : %b ",select ,
            "Input : %b ",in1,
            "Result : %b ",result);
    end

          else if( ( (select == 1) && result == in2 ) )begin
            $display("ALL OK","Select : %b ",select ,
            "Input : %b ",in2,
            "Result : %b ",result);
    end


    else
    begin
        FailCount = FailCount + 1 ;
        $display("Test Case Failed with : ",
        "Select : %b ",select, 
        "Result : %b ", result );
    end


    end


    end


    initial begin
         FailCount = 0 ;
         select    = 0 ;  
         in1    = 0 ; 
         in2    = 0 ; 

#100 

if(FailCount != 0 )
begin
    $display( "   TEST CASES FAILED   " );
end

    else begin
        $display ("   ALL TEST CASES PASSED    ");
    end

    $finish ;

    end


    always #50  in1 = ~in1 ;
    always #25  in2 = ~in2 ;
    always #12  select = ~select ;


    
     
endmodule