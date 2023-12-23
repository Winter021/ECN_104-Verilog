module nandGate(input1 , input2 , result);

input input1;
input input2;

output result;

assign result = ~(input1 & input2);

endmodule