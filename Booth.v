module Booth(A_in,M,Q_in,A_out,Q_out);
input [24:0]A_in ;
input [24:0]M ;
input [25:0]Q_in ;
output [24:0] A_out ;
output [25:0] Q_out ;

wire [24:0] A_out ;
wire [25:0] Q_out ;

reg [24:0] A_temp ;
reg [25:0] Q_temp ;

wire [24:0] A_sum ;
wire [24:0] A_sub ;


assign A_sum = A_in + M ;
assign A_sub = A_in + ~M + 1 ;

always @ (A_in,M,Q_in,A_sum,A_sub)
 begin 
	case(Q_in[1:0])
	2'b00,2'b11 : begin
		A_temp = {A_in[24],A_in[24:1]} ;
		Q_temp = {A_in[0], Q_in[25:1]};
		end
	2'b01 : begin
		A_temp = {A_sum[24],A_sum[24:1]};
		Q_temp = {A_sum[0],Q_in[25:1]};
		end
	2'b10 : begin
		A_temp = {A_sub[24],A_sub[24:1]};
		Q_temp = {A_sub[0],Q_in[25:1]};
		end
	endcase
end
assign A_out = A_temp ;
assign Q_out = Q_temp ;

endmodule
