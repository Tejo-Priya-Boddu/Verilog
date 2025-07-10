`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module CLA(
input [3:0]a,b,
input cin,
output [3:0]s,
output cout,
output [4:0]out
    );
    wire [3:0]p,g;
    wire [3:0]c;
    
    assign g = a & b;
    assign p = a | b;
    
    assign c[0]= cin;
    assign c[1]= g[0]|(p[0]&c[0]);
    assign c[2]= g[1]|(p[1]&c[1]);
    assign c[3]= g[2]|(p[2]&c[2]);
    assign cout= g[3]|(p[3]&c[3]);
    
    assign s[0]= a[0]^b[0]^c[0];
    assign s[1]= a[1]^b[1]^c[1];
    assign s[2]= a[2]^b[2]^c[2];
    assign s[3]= a[3]^b[3]^c[3];
    
    assign out = {cout,s};
    
endmodule
