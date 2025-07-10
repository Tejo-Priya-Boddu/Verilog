`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module even_parity_check(
input [3:0]in,
input p,
output error
);
assign error = in[0]^in[1]^in[2]^in[3]^p;
endmodule
