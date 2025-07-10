`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module bcd_adder(
input [4:0]a,b,
input cin,
output reg [3:0]sum,
output reg cout
    );
    reg [4:0]sum_temp;
    reg cout_temp;
    always @ (*)
    begin
        sum_temp = a + b + cin;
        if(sum_temp > 9)
        begin
            sum_temp = sum_temp + 6;
            cout_temp = 1;
        end
        else
        begin
            sum_temp = sum_temp[3:0];
            cout_temp = sum_temp[4];
        end
        sum = sum_temp;
        cout = cout_temp;
    end
        
endmodule
