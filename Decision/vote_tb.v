module vote_tb;
    reg [3:0] I_tb; //暫存
    wire [3:0] O_tb;//線
    voter_if voter_1(.I(I_tb), .O(O_tb));//引用vorer_if函數
initial begin //創建四位元測試值
    #0 I_tb=4'b0000;
    #10 I_tb=4'b0000;
    #10 I_tb=4'b0001;
    #10 I_tb=4'b0010;
    #10 I_tb=4'b0011;
    #10 I_tb=4'b0100;
    #10 I_tb=4'b0101;
    #10 I_tb=4'b0110;
    #10 I_tb=4'b0111;
    #10 I_tb=4'b1000;
    #10 I_tb=4'b1001;
    #10 I_tb=4'b1010;
    #10 I_tb=4'b1011;
    #10 I_tb=4'b1100;
    #10 I_tb=4'b1101;
    #10 I_tb=4'b1110;
    #10 I_tb=4'b1111;
end
initial begin
    $dumpfile("voter.vcd"); //存入檔案
    $dumpvars(0, voter_1);  //將voter_1所有變數存入
end
endmodule