`timescale 1ns / 1ps

module full_adder(
input a,b,c,
output sum,carry
);
wire w1,w2,w3;
half_adder ha1(a,b,w1,w2);
half_adder ha2(w1,c,sum,w3);
assign carry=w2|w3;
endmodule

module half_adder(a,b,sum,carry);
input a,b;
output sum,carry;
assign sum=a^b;
assign carry=a&b;
endmodule
