`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module seven_seg_display(
input [3:0]d,
output reg [6:0]out
    );
   always @ (*)
   begin
   case(d)
    4'b0000:out=7'b1111110;
    4'b0001:out=7'b0110000;
    4'b0010:out=7'b1101101;
    4'b0011:out=7'b1111001;
    4'b0100:out=7'b0110011;
    4'b0101:out=7'b1011011;
    4'b0110:out=7'b1011111;
    4'b0111:out=7'b1110000;
    4'b1000:out=7'b1111111;
    4'b1001:out=7'b1111011;
    default:out=7'b0000000;
    endcase
end
    
endmodule
