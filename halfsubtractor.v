`timescale 1ns / 1ps

module halfsub(
input a,b,
output dif,borrow
);
assign dif =a^b;
assign borrow=~(a)&b;

endmodule
