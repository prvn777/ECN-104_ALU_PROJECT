`timescale 0.01 ns/1 ps
    `include "alu.v"


    module and_tb ();
        reg clock;
        reg [31:0] a, b;
        reg [2:0] op;
        reg [31:0] correct;

        wire [31:0] out;
        wire [49:0] pro;

        alu U1 (
                .clk(clock),
                .A(a),
                .B(b),
                .OPERATIONCODE(op),
                .O(out)
            );
        
        always
        #100 clock = ~clock; 
        initial begin
            $dumpfile("alu_tb.vcd");
            $dumpvars(0,clock, a, b, op, out);
            clock = 0;

    op = 3'b100;

		
		$display ("OPERATIONCODE: 100, Operation: AND");
		
		a = 32'b11111111010110110000111001000100;
		b = 32'b01100100100011100011011110100110;
		correct = 32'b01100100000010100000011000000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000111100010000110000110101001;
		b = 32'b11010010100101000001101001001011;
		correct = 32'b01000010100000000000000000001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111110001000101110100010000000;
		b = 32'b00101010010101000000111101111101;
		correct = 32'b00101010000000000000100000000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100110101111100000100110001101;
		b = 32'b11001100010110101000010000011101;
		correct = 32'b00000100000110100000000000001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110011100001001111010110100111;
		b = 32'b00010010110100111000110110111111;
		correct = 32'b00010010100000001000010110100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001101101110110110101001011001;
		b = 32'b11010110111111110101111111001101;
		correct = 32'b00000100101110110100101001001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101011000000100001011100111001;
		b = 32'b11011101011110110010111100101001;
		correct = 32'b10001001000000100000011100101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001101010100111011101011101110;
		b = 32'b01011100101101001011100101111001;
		correct = 32'b01001100000100001011100001101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111100010110011000011101000000;
		b = 32'b00100010011001010001100110111100;
		correct = 32'b00100000010000010000000100000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110100101111100000110110000010;
		b = 32'b11000111110101000110100011101011;
		correct = 32'b11000100100101000000100010000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110000000100111000111000111010;
		b = 32'b11100101101100011100110000100010;
		correct = 32'b11100000000100011000110000100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110001011100011010110000010110;
		b = 32'b10100000011001110111011011100010;
		correct = 32'b10100000011000010010010000000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		
		a = 32'b01100011011100100101101100111101;
		b = 32'b10101101001001111110111010001010;
		correct = 32'b00100001001000100100101000001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100011110000111011110101010011;
		b = 32'b01011001001110111111100011111110;
		correct = 32'b01000001000000111011100001010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111011011100100100100001111111;
		b = 32'b10000111100101110100110001101011;
		correct = 32'b10000011000100100100100001101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		
		a = 32'b01101110100100000101011111111100;
		b = 32'b11000001111011111000000101101001;
		correct = 32'b01000000100000000000000101101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		$display ("Done.");
		$finish;
	end

endmodule
