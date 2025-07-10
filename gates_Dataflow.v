`timescale 1ns / 1ps


module gates_df(a,b,and_op,or_op,nand_op,nor_op,not_op,xor_op,xnor_op,buf_op);
input a,b;
output and_op,or_op,nand_op,not_op,nor_op,xor_op,xnor_op,buf_op;
//dataflow modelling
assign and_op=a&b;
assign or_op=a|b;
assign nand_op=~(a&b);
assign nor_op=~(a|b);
assign xor_op=a^b;
assign xnor_op=~(a^b);
assign not_op=~(a);
assign buf_op=a;
endmodule
