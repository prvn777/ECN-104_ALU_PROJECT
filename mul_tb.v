`timescale 0.01 ns/1 ps
    `include "alu.v"


    module mul_tb ();
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

    op = 3'b011;

		
		$display ("OPERATIONCODE: 011, Operation: MUL");
		
		a = 32'b10101000011001000101100111101010;
		b = 32'b11000000101101101001010100111001;
		correct = 32'b00101001101000101101110100001000;
		#400 //-1.26760395e-14 * -5.7057157 = 7.232588e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010111011001100010101101000000;
		b = 32'b11100100100001101110000001111100;
		correct = 32'b10111100011100101000100011110010;
		#400 //7.4371597e-25 * -1.9904316e+22 = -0.014803158
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111100110010001100110000110010;
		b = 32'b10100011000010100011110000110000;
		correct = 32'b11100000010110001101101010010001;
		#400 //8.3408076e+36 * -7.49374e-18 = -6.2503845e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010111010111011100010001100110;
		b = 32'b11011000011010110000110011111010;
		correct = 32'b11110000010010111001111010000111;
		#400 //243835600000000.0 * -1033763870000000.0 = -2.5206842e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011000101011011111010001110111;
		b = 32'b01001101001011100101000011010001;
		correct = 32'b10100110011011001110011000100111;
		#400 //-4.49663e-24 * 182783250.0 = -8.2190863e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100101011101110011011001101110;
		b = 32'b01000110010011111000011110101111;
		correct = 32'b01101100010010000110100000001010;
		#400 //7.2964286e+22 * 13281.921 = 9.691059e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010001011010010010001011000000;
		b = 32'b01000000000100011000011110111110;
		correct = 32'b00010010000001001000100001001101;
		#400 //1.8391167e-28 * 2.27391 = 4.181986e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		
		a = 32'b10110111100101110001100011111010;
		b = 32'b00010010000110001010101100011110;
		correct = 32'b10001010001101000011011110101000;
		#400 //-1.8012233e-05 * 4.817366e-28 = -8.6771525e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111000100001000111110000010001;
		b = 32'b01111100001100000001000110110001;
		correct = 32'b11110101001101100011110011100111;
		#400 //-6.31736e-05 * 3.6568123e+36 = -2.3101398e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011000000110111111110010001011;
		b = 32'b11101010011111110011010101001011;
		correct = 32'b01000011000110111000000100000111;
		#400 //-2.0160782e-24 * -7.713194e+25 = 155.50401
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001101111001101101111101011010;
		b = 32'b10100000101011111111100001101000;
		correct = 32'b10101111000111101011001010110101;
		#400 //484174660.0 * -2.9810535e-19 = -1.4433506e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101011000010010101100010101001;
		b = 32'b10100011011010101101110011001101;
		correct = 32'b01001110111111000000001100000001;
		#400 //-1.6604152e+26 * -1.2731922e-17 = 2114027600.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111011010000000110111011110101;
		b = 32'b11011010101101011000000111101101;
		correct = 32'b11010110100010000111000000011101;
		#400 //0.002936301 * -2.5544913e+16 = -75007550000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101001001110110001010000100001;
		b = 32'b10010101001001001010110001010001;
		correct = 32'b10111110111100001010110110100100;
		#400 //1.4135262e+25 * -3.325547e-26 = -0.47007477
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		
		a = 32'b10100101001010010101000010001010;
		b = 32'b01001111111000110111100110001011;
		correct = 32'b10110101100101100111001011001101;
		#400 //-1.4685701e-16 * 7632787000.0 = -1.1209282e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		$display ("Done.");
		$finish;
	end

endmodule
