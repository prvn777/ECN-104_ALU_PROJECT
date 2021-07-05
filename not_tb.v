`timescale 0.01 ns/1 ps
    `include "alu.v"


    module not_tb ();
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

    op = 3'b110;

		/* Display the operation */
          $display ("OPERATIONCODE: 110, Operation: NOT");
		/* Test Cases!*/
		a = 32'b11001101000010101101000001110100;
		correct = 32'b00110010111101010010111110001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110100111010110101000100000011;
		correct = 32'b11001011000101001010111011111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010101000101110100110010100011;
		correct = 32'b10101010111010001011001101011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110110011001001001011010011111;
		correct = 32'b10001001100110110110100101100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010010010001001101111111001010;
		correct = 32'b01101101101110110010000000110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001111110100000000100011011001;
		correct = 32'b01110000001011111111011100100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111110111111100010000101110100;
		correct = 32'b00000001000000011101111010001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100011000110101101001111111000;
		correct = 32'b11011100111001010010110000000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001100011110001001111011101010;
		correct = 32'b11110011100001110110000100010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001100111001010101000110101001;
		correct = 32'b01110011000110101010111001010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010101000010111001011001010110;
		correct = 32'b01101010111101000110100110101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100111110011001001111010101000;
		correct = 32'b11011000001100110110000101010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011110111000110000111001011100;
		correct = 32'b01100001000111001111000110100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010100100000100110011001011001;
		correct = 32'b01101011011111011001100110100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011001010001011001010111100011;
		correct = 32'b11100110101110100110101000011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111001010000011100101011100101;
		correct = 32'b10000110101111100011010100011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111100011101000010010100110000;
		correct = 32'b11000011100010111101101011001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111101001101000001011010011101;
		correct = 32'b00000010110010111110100101100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100111111010111111111010111011;
		correct = 32'b11011000000101000000000101000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
	
		a = 32'b01111010001010101110001110101011;
		correct = 32'b10000101110101010001110001010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		$display ("Done.");
		$finish;
	end

endmodule
