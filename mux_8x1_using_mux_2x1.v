`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module mux(
input [7:0]i,
input [2:0]sel,
output  out
    );
    wire [5:0]w;
    mux_2x1 m1(i[0],i[1],sel[0],w[0]);
    mux_2x1 m2(i[2],i[3],sel[0],w[1]);
    mux_2x1 m3(i[4],i[5],sel[0],w[2]);
    mux_2x1 m4(i[6],i[7],sel[0],w[3]);
    
    mux_2x1 m5(w[0],w[1],sel[1],w[4]);
    mux_2x1 m6(w[2],w[3],sel[1],w[5]);
    
    mux_2x1 m7(w[4],w[5],sel[2],out);
    
endmodule
module mux_2x1(a,b,sel,out);
input a,b,sel;
output out;
assign out=sel?b:a;
endmodule
