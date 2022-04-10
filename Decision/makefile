VERILOG = iverilog
TARGET = vote.vcd
TEMP = vote.vvp
$(TARGET) : vote.vvp
	vvp	vote.vvp
$(TEMP): vote_tb.v vote.v
	$(VERILOG) -o vote.vvp vote_tb.v vote.v
clean:
	-del $(TARGET)
	-del $(TEMP)
