`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module carry_save_adder(a,b,c,sum,cout,out);
 input[3:0]a,b,c;
 output [4:0] sum;
 output cout;
 output[5:0]out;
 wire [3:0]sum_temp,cout_temp,co;
 full_addr fa1(a[0],b[0],c[0],sum_temp[0],cout_temp[0]);
 full_addr fa2(a[1],b[1],c[1],sum_temp[1],cout_temp[1]);
 full_addr fa3(a[2],b[2],c[2],sum_temp[2],cout_temp[2]);
 full_addr fa4(a[3],b[3],c[3],sum_temp[3],cout_temp[3]);
 full_addr fa5(sum_temp[1],cout_temp[0],1'b0,sum[1],co[0]);
 full_addr fa6(sum_temp[2],cout_temp[1],co[0],sum[2],co[1]);
 full_addr fa7(sum_temp[3],cout_temp[2],co[1],sum[3],co[2]);
 full_addr fa8(1'b0,cout_temp[3],co[2],sum[4],cout);
 assign sum[0]=sum_temp[0];
assign out={cout,sum};
 endmodule


module full_addr(a,b,c,s,ca);
input a,b,c;
output s,ca;
assign s=a^b^c;
assign ca=(a&b)|(b&c)|(c&a);
endmodule
