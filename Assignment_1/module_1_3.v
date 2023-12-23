
module parityBits( inputSignal , evenParity , oddParity);

input [31:0]inputSignal ;

output evenParity;
output oddParity;

assign evenParity = ^inputSignal;
assign oddParity  = ~evenParity;

endmodule