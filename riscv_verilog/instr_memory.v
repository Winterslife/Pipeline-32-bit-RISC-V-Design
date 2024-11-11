module instr_memory(
	addr,
	instr
    );
	input [7:0]addr;
	output [31:0]instr;
	
	reg[31:0] rom[255:0];
	
    //rom进行初始�?
    initial begin
        $readmemb("D:/work/Verilogwork/VLSI_RISC_V/riscv/rom_binary_file.txt", rom);
        //$readmemh("rom_hex_file.txt", rom);
    end
	
    assign instr = rom[addr];

endmodule
	
	
	
	