`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module comparator(
input [3:0]a,b,
output reg gt,lt,eq
    );
    always @ (*)
    begin
    gt=1'b0;
    lt=1'b0;
    eq=1'b0;
    if(a>b)
    begin
        gt=1'b1;
        lt=1'b0;
        eq=1'b0;
    end
    else if(a<b)
    begin
        gt=1'b0;
        lt=1'b1;
        eq=1'b0;
    end
    else 
    begin
        gt=1'b0;
        lt=1'b0;
        eq=1'b1;
    end
end
endmodule
