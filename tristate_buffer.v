`timescale 1ns / 1ps


module tristate_buffer(
input in,
input en,
output out
    );
    assign out = en ? in : 1'bz;
endmodule
