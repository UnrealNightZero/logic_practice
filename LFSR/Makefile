VERILOG = iverilog
TARGET = LFSR.vcd
TEMP = LFSR.vvp
$(TARGET) : LFSR.vvp
	vvp	LFSR.vvp
$(TEMP): LFSR_tb.v LFSR.v
	$(VERILOG) -o LFSR.vvp LFSR_tb.v LFSR.v
clean:
	-del $(TARGET)
	-del $(TEMP)
