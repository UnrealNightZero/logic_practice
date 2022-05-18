`timescale 1ns/1ps
module LFSR_tb;
reg clk;
wire [2:0] out;
reg rst;

parameter PERIOD = 20;
parameter real DUTY_CYCLE = 0.5;
parameter OFFSET = 0;

initial begin
  #OFFSET;
    forever
    begin
    clk = 1'b1;
    #(PERIOD-(PERIOD*DUTY_CYCLE)) clk = 1'b0;
    #(PERIOD*DUTY_CYCLE);
  end
end

initial begin
	rst = 1;
	#20 rst = 0;
  	#500 $finish;
end


initial begin
	$dumpfile("LFSR.vcd");
	$dumpvars(0, dff_0);
end


LFSR dff_0(.Qout(out),
        .clk(clk),
        .rst(rst));

endmodule