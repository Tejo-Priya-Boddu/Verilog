`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module even_parity(
input [3:0]in,
output parity
    );
    assign parity = in[3]^in[2]^in[1]^in[0];
endmodule
