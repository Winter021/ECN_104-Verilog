module multiplier(inputSignal ,result);

input [31:0]inputSignal;
output[31:0]result;

wire[31:0]temp1;
wire[31:0]temp3;

assign temp1 = inputSignal<<1;
assign temp3 = inputSignal<<3;

assign result = temp1 + temp3 ;

endmodule 