`timescale 0.01 ns/1 ps
    `include "alu.v"


    module or_tb ();
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
        /* create a 10Mhz clock */
        always
        #100 clock = ~clock; // every 100 nanoseconds invert
        initial begin
            $dumpfile("alu_tb.vcd");
            $dumpvars(0,clock, a, b, op, out);
            clock = 0;

    op = 3'b101;

		/* Display the operation */
		$display ("OPERATIONCODE: 101, Operation: OR");
		/* Test Cases!*/
		a = 32'b10100011101110110111010001110011;
		b = 32'b00101100010100101110001011011000;
		correct = 32'b10101111111110111111011011111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101000101000001011100000101011;
		b = 32'b00000010100000111011001101101100;
		correct = 32'b11101010101000111011101101101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011101101000100101101000001111;
		b = 32'b10101100011100001010010111001011;
		correct = 32'b10111101111100101111111111001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111010001100001000011110111011;
		b = 32'b01001111000100000110000011100101;
		correct = 32'b01111111001100001110011111111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001001100011110101100100010111;
		b = 32'b10011100010110011111101100111101;
		correct = 32'b11011101110111111111101100111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111001100010100110000110100111;
		b = 32'b00011111110101011000010110000010;
		correct = 32'b10111111110111111110010110100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000110011101000011010000111000;
		b = 32'b11001011000100100110001001100000;
		correct = 32'b11001111011101100111011001111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100110011010000100000101101110;
		b = 32'b11000000110110100111010000101101;
		correct = 32'b11100110111110100111010101101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110100100000011100111111101111;
		b = 32'b01100001111100000110000010111111;
		correct = 32'b01110101111100011110111111111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100100101011111100000110011111;
		b = 32'b00010111111100100100110100000010;
		correct = 32'b11110111111111111100110110011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010000000001110001010100001000;
		b = 32'b11011101001100000001101111010110;
		correct = 32'b11011101001101110001111111011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111101000111000000010011001100;
		b = 32'b01001111100011001000000101000100;
		correct = 32'b11111111100111001000010111001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101101000011100110000110001111;
		b = 32'b10000011100100001110010001110011;
		correct = 32'b10101111100111101110010111111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010100011011011111011010010000;
		b = 32'b10011011111100011110000101010100;
		correct = 32'b11011111111111011111011111010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001100111111100100111011110001;
		b = 32'b00010010100110100010010010010000;
		correct = 32'b10011110111111100110111011110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011000101011101100001110010010;
		b = 32'b00000111101111100001010100000100;
		correct = 32'b10011111101111101101011110010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010110000111000110000011011111;
		b = 32'b01101101100001011001101011001010;
		correct = 32'b11111111100111011111101011011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		
		$display ("Done.");
		$finish;
	end

endmodule
