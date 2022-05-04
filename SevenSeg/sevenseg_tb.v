`timescale 1ns/1ps
module BCD_tb;
reg clk,load;
reg [3:0]din;
reg rst_n;
wire [7:0] out;

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
	rst_n = 0;
	load  = 0;
	din = 4'b0110;
	#5 rst_n = 1'b1;
  #150 load = 1;
	#151 load = 0;
	#500 $finish;
end

initial begin
	$dumpfile("sevenseg.vcd");
	$dumpvars(0, dff_0);
end

sevenseg dff_0(.clk(clk),
        .rst(rst_n),
        .Din(din),
        .load(load),
        .out(out));

endmodule