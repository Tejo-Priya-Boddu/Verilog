`timescale 1ns / 1ps
module RS_latch(
input R,S,
output q,q_bar);
    nor (q_bar, S, q);  // First NOR gate
    nor (q,  R, q_bar); // Second NOR gate
endmodule
