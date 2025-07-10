`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module fullsub(
input a,b,c,
output d,br
    );
    wire w1,w2,w3;
    halfsub hs1(a,b,w1,w2);
    halfsub hs2(w1,c,d,w3);
    assign br=w2|w3;
endmodule
module halfsub(a,b,d,br);
input a,b;
output d,br;
assign d=a^b;
assign br=(~a)&b;
endmodule
