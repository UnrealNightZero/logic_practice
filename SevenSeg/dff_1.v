module dff_1 (clk, Din, Load, Q4, rst);
input clk, Load ,rst;
input [3:0] Din;
output [3:0] Q4;
reg [3:0]Q4;

always@ (posedge clk)
  if(!rst)
    	Q4=0;
	else if (Load) begin
    	Q4 = Din;
	end
	else if(Q4==9)
		Q4 = 0;
	else Q4 = Q4+1;
endmodule
