VERILOG = iverilog
TARGET = sevenseg.vcd
TEMP = sevenseg.vvp
$(TARGET) : sevenseg.vvp
	vvp	sevenseg.vvp
$(TEMP): sevenseg_tb.v sevenseg.v dff_1.v
	$(VERILOG) -o sevenseg.vvp sevenseg_tb.v sevenseg.v dff_1.v
clean:
	-del $(TARGET)
	-del $(TEMP)
