module module_1_1(inputSignal,result);

input [31:0] inputSignal;
output [31:0] result;

assign result[31:5] = inputSignal[26:0];
assign result[4:0]  = 0;


endmodule
