module adder(A, B, Output);
  
  input  [31:0] A, B;
  
  
  output [31:0] Output;
  
 
  wire [31:0] Output;
  wire [7:0] o_E;
  wire [24:0] o_M;
  
 
	reg A_sign;
	reg [7:0] A_exponent;
	reg [23:0] A_mantissa;
	reg B_sign;
	reg [7:0] B_exponent;
	reg [23:0] B_mantissa;
  reg O_sign;
  reg [7:0] O_exponent;
  reg [24:0] O_mantissa;
  reg [7:0] diff;
  reg [23:0] tmp_mantissa;
  reg [7:0] tmp_exponent;
  reg  [7:0] i_E;
  reg  [24:0] i_M;

 
  addition_normaliser norml
  (
    .input_e(i_E),
    .input_m(i_M),
    .output_e(o_E),
    .output_m(o_M)
  );

  assign Output[31] = O_sign;
  assign Output[30:23] = O_exponent;
  assign Output[22:0] = O_mantissa[22:0];

  always @ ( * ) begin
		A_sign = A[31];
		if(A[30:23] == 0) 
		begin
			A_exponent = 8'b00000001;
			A_mantissa = {1'b0, A[22:0]};
		end 
		else begin
			A_exponent = A[30:23];
			A_mantissa = {1'b1, A[22:0]};
		end
		B_sign = B[31];
		if(B[30:23] == 0) 
		begin
			B_exponent = 8'b00000001;
			B_mantissa = {1'b0, B[22:0]};
		end 
		else begin
			B_exponent = B[30:23];
			B_mantissa = {1'b1, B[22:0]};
		end
    if (A_exponent == B_exponent) begin                       // Equal exponents
      O_exponent = A_exponent;
      if (A_sign == B_sign) begin                           // Equal signs = add
        O_mantissa = A_mantissa + B_mantissa;
        //Signify to shift
        O_mantissa[24] = 1;
        O_sign = A_sign;
      end 
		else begin                                       // Opposite signs = subtract
        if(A_mantissa > B_mantissa) begin
          O_mantissa = A_mantissa - B_mantissa;
          O_sign = A_sign;
        end 
		else begin
          O_mantissa = B_mantissa - A_mantissa;
          O_sign = B_sign;
        end
      end
    end 
		else begin                                           //Unequal exponents
      if (A_exponent > B_exponent) begin                    // A is bigger
        O_exponent = A_exponent;
        O_sign = A_sign;
	        diff = A_exponent - B_exponent;
        tmp_mantissa = B_mantissa >> diff;
        if (A_sign == B_sign)
          O_mantissa = A_mantissa + tmp_mantissa;
        else
          	O_mantissa = A_mantissa - tmp_mantissa;
      end 
		else if (A_exponent < B_exponent) begin            // B is bigger
        O_exponent = B_exponent;
        O_sign = B_sign;
        diff = B_exponent - A_exponent;
        tmp_mantissa = A_mantissa >> diff;
        if (A_sign == B_sign) begin
          O_mantissa = B_mantissa + tmp_mantissa;
        end 
		else begin
			O_mantissa = B_mantissa - tmp_mantissa;
        end
      end
    end
    if(O_mantissa[24] == 1) begin
      O_exponent = O_exponent + 1;
      O_mantissa = O_mantissa >> 1;
    end 
		else if((O_mantissa[23] != 1) && (O_exponent != 0)) begin
      i_E = O_exponent;
      i_M = O_mantissa;
      O_exponent = o_E;
      O_mantissa = o_M;
    end
  end
endmodule
