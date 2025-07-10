`timescale 1ns / 1ps

module fullsub(
input a,b,c,
output d,br
    );
    wire w1,w2,w3;
    assign d=a^b^c;
    assign w1=(~a)&b;
    assign w2=(~a)&c;
    assign w3=b&c;
    assign br=w1|w2|w3;
    
endmodule
