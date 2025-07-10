`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module rpa(
input [3:0]a,b,
input cin,
output [3:0]s,
output c_out
    );
    wire [2:0]c;
    full_adder fa1(a[0],b[0],cin,s[0],c[0]);
    full_adder fa2(a[1],b[1],c[0],s[1],c[1]);
    full_adder fa3(a[2],b[2],c[1],s[2],c[2]);
    full_adder fa4(a[3],b[3],c[2],s[3],c_out);
    
endmodule
module full_adder(a,b,c,s,ca);
input a,b,c;
output s,ca;
assign s=a^b^c;
assign ca=(a&b)|(b&c)|(c&a);
endmodule
