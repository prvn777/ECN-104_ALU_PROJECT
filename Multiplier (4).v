module Multiplier(A, B, Output);

  /* Assign wires and registers to the inputs and outputs */

  // A
  input [31:0] A;
  reg SignA;
  reg [7:0] ExponentA;
  reg [23:0] MantissaA;

  // B
  input [31:0] B;
  reg SignB;
  reg [7:0] ExponentB;
  reg [23:0] MantissaB;
  
  // Output
  output [31:0] Output;
  wire [31:0] Output;
  reg SignO;
  reg [7:0] ExponentO;
  reg [24:0] MantissaO;

  // Extra registers and wires to connect modules
  wire [49:0] Product;
  reg [49:0] Product1 ;
  reg  [7:0] i_e;
  reg  [47:0] i_m;
  wire [7:0] o_e;
  wire [47:0] o_m;

  /* Assign values*/

  // O
  assign Output[31] = SignO;
  assign Output[30:23] = ExponentO;
  assign Output[22:0] = MantissaO[22:0];

  /* Connect modules to inputs and corresponding output wires */
  Multiplication_normaliser norm1
  (
	.in_e(i_e),
	.in_m(i_m),
	.out_e(o_e),
	.out_m(o_m)
  );

  Booth_Multiplier W1(
	.M({1'b0,MantissaA}),
	.Q({1'b0,MantissaB}),
	.Z(Product)
	);
  /* Main logic*/
  always @ ( * ) begin
		SignA = A[31];
		if(A[30:23] == 0) begin
			ExponentA = 8'b00000001;
			MantissaA = {1'b0, A[22:0]};
		end else begin
			ExponentA = A[30:23];
			MantissaA = {1'b1, A[22:0]};
		end
		SignB = B[31];
		if(B[30:23] == 0) begin
			ExponentB = 8'b00000001;
			MantissaB = {1'b0, B[22:0]};
		end else begin
			ExponentB = B[30:23];
			MantissaB = {1'b1, B[22:0]};
		end
    SignO = SignA ^ SignB;
    ExponentO = ExponentA + ExponentB - 127;
    Product1 = Product ;
	
	// Normalization
    if(Product1[47] == 1) begin
      ExponentO = ExponentO + 1;
      Product1 = Product1 >> 1;
    end else if((Product1[46] != 1) && (ExponentO != 0)) begin
      i_e = ExponentO;
      i_m = Product1;
      ExponentO = o_e;
      Product1 = o_m;
    end
		MantissaO = Product1[46:23];
	end
endmodule
