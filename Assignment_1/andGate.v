module andGate(input1 ,input2, result);

input input1 ;
input input2 ;

output result;

wire resultTemp0;

nandGate Gate1(input1 ,input2 , resultTemp0);
nandGate Gate2(resultTemp0 , resultTemp0 , result);


endmodule
