`timescale 1ns / 1ps
module logicgates(a,b,and_op,or_op,nand_op,nor_op,not_op,xor_op,xnor_op,buf_op);
input a,b;
output and_op,or_op,nand_op,nor_op,not_op,xor_op,xnor_op,buf_op;
//gatelevel
buf g0(buf_op,a);
and g1(and_op,a,b);
or g2(or_op,a,b);
nand g3(nand_op,a,b);
nor g4(nor_op,a,b);
not g5(not_op,a);
xor g6(xor_op,a,b);
xnor g7(xnor_op,a,b);
endmodule
