module divider (A, B, Output);
	// Inputs
	input [31:0] A;
	input [31:0] B;


	output [31:0] Output;

	// Wires
	wire [31:0] ReciprocalB;


	reciprocal recip
	(
		.Input(B),
		.Output(ReciprocalB)
	);

	Multiplier mult
	(
		.A(A),
		.B(ReciprocalB),
		.Output(Output)
	);
endmodule
