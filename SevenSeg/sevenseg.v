module sevenseg(clk, rst, Din ,load ,out);
input [3:0] Din;
input clk,rst,load;
wire [3:0] Q;
output reg [7:0] out;

dff_1 dff(clk, Din, load, Q, rst);

always @(*)
begin
case (Q)
    4'b0000:out=8'b11000000;
    4'b0001:out=8'b11111001;
    4'b0010:out=8'b10100100;
    4'b0011:out=8'b10110000;
    4'b0100:out=8'b10011001;
    4'b0101:out=8'b10010010;
    4'b0110:out=8'b10000010;
    4'b0111:out=8'b11111000;
    4'b1000:out=8'b10000000;
    4'b1001:out=8'b00100000;
    default:out=8'b00000000;
endcase
end

endmodule