module addition_normaliser(input_e, input_m, output_e, output_m);
  
  input [7:0] input_e;
  input [24:0] input_m;
  
  
  output [7:0] output_e;
  output [24:0] output_m;
  
 
  wire [7:0] input_e;
  wire [24:0] input_m;
  
  
  reg [7:0] output_e;
  reg [24:0] output_m;
  
  
  always @ ( * ) begin
		if (input_m[23:3] == 21'b000000000000000000001) begin
			output_e = input_e - 20;
			output_m = input_m << 20;
		end 
                        else if (input_m[23:4] == 20'b00000000000000000001) begin
			output_e = input_e - 19;
			output_m = input_m << 19;
		end 
			else if (input_m[23:5] == 19'b0000000000000000001) begin
			output_e = input_e - 18;
			output_m = input_m << 18;
		end 
			else if (input_m[23:6] == 18'b000000000000000001) begin
			output_e = input_e - 17;
			output_m = input_m << 17;
		end 
			else if (input_m[23:7] == 17'b00000000000000001) begin
			output_e = input_e - 16;
			output_m = input_m << 16;
		end 
			else if (input_m[23:8] == 16'b0000000000000001) begin
			output_e = input_e - 15;
			output_m = input_m << 15;
		end 
			else if (input_m[23:9] == 15'b000000000000001) begin
			output_e = input_e - 14;
			output_m = input_m << 14;
		end 
			else if (input_m[23:10] == 14'b00000000000001) begin
			output_e = input_e - 13;
			output_m = input_m << 13;
		end 
			else if (input_m[23:11] == 13'b0000000000001) begin
			output_e = input_e - 12;
			output_m = input_m << 12;
		end 
			else if (input_m[23:12] == 12'b000000000001) begin
			output_e = input_e - 11;
			output_m = input_m << 11;
		end 
			else if (input_m[23:13] == 11'b00000000001) begin
			output_e = input_e - 10;
			output_m = input_m << 10;
		end 
			else if (input_m[23:14] == 10'b0000000001) begin
			output_e = input_e - 9;
			output_m = input_m << 9;
		end 
			else if (input_m[23:15] == 9'b000000001) begin
			output_e = input_e - 8;
			output_m = input_m << 8;
		end 
			else if (input_m[23:16] == 8'b00000001) begin
			output_e = input_e - 7;
			output_m = input_m << 7;
		end 
			else if (input_m[23:17] == 7'b0000001) begin
			output_e = input_e - 6;
			output_m = input_m << 6;
		end 
			else if (input_m[23:18] == 6'b000001) begin
			output_e = input_e - 5;
			output_m = input_m << 5;
		end 
			else if (input_m[23:19] == 5'b00001) begin
			output_e = input_e - 4;
			output_m = input_m << 4;
		end 
			else if (input_m[23:20] == 4'b0001) begin
			output_e = input_e - 3;
			output_m = input_m << 3;
		end 
			else if (input_m[23:21] == 3'b001) begin
			output_e = input_e - 2;
			output_m = input_m << 2;
		end 
			else if (input_m[23:22] == 2'b01) begin
			output_e = input_e - 1;
			output_m = input_m << 1;
		end
  end
endmodule
