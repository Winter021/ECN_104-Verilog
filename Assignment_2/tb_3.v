// TURING MACHINE TEST BENCH
module turing_tb ;

reg clk ;
wire done ;
wire [31:0] result;

initial begin
    clk = 1'b0;
end

always  begin
    #25 clk = ~clk ;
end

solution_3 turing(clk , result ,done );

always @(posedge clk) begin
    
    if(done ==1 )
    begin
            if(result != 27)begin
                $display("  TEST CASES FAILED ");
            end

            else begin
                $display( "ALL TEST CASES PASSED ");
            end
            $finish;
    end

end

endmodule 