module Booth_Multiplier(M,Q,Z);
input [24:0]M;
input [24:0]Q;
output [49:0]Z;

wire [49:0]Z ;

wire [24:0]A_out1 ;
wire [25:0]Q_out1 ;

wire [24:0]A_out2 ;
wire [25:0]Q_out2 ;

wire [24:0]A_out3 ;
wire [25:0]Q_out3 ;

wire [24:0]A_out4 ;
wire [25:0]Q_out4 ;

wire [24:0]A_out5 ;
wire [25:0]Q_out5 ;

wire [24:0]A_out6 ;
wire [25:0]Q_out6 ;

wire [24:0]A_out7 ;
wire [25:0]Q_out7 ;

wire [24:0]A_out8 ;
wire [25:0]Q_out8 ;

wire [24:0]A_out9 ;
wire [25:0]Q_out9 ;

wire [24:0]A_out10 ;
wire [25:0]Q_out10 ;

wire [24:0]A_out11 ;
wire [25:0]Q_out11 ;

wire [24:0]A_out12 ;
wire [25:0]Q_out12 ;

wire [24:0]A_out13 ;
wire [25:0]Q_out13 ;

wire [24:0]A_out14 ;
wire [25:0]Q_out14 ;

wire [24:0]A_out15 ;
wire [25:0]Q_out15 ;

wire [24:0]A_out16 ;
wire [25:0]Q_out16 ;

wire [24:0]A_out17 ;
wire [25:0]Q_out17 ;

wire [24:0]A_out18 ;
wire [25:0]Q_out18 ;

wire [24:0]A_out19 ;
wire [25:0]Q_out19 ;

wire [24:0]A_out20 ;
wire [25:0]Q_out20 ;

wire [24:0]A_out21 ;
wire [25:0]Q_out21 ;

wire [24:0]A_out22 ;
wire [25:0]Q_out22 ;

wire [24:0]A_out23 ;
wire [25:0]Q_out23 ;

wire [24:0]A_out24 ;
wire [25:0]Q_out24 ;

wire [24:0]A_out25 ;
wire [25:0]Q_out25 ;





Booth b1(
	.A_in(25'b0000000000000000000000000),
	.M(M),
	.Q_in({Q,1'b0}),
	.A_out(A_out1),
	.Q_out(Q_out1)
);

Booth b2(
	.A_in(A_out1),
	.M(M),
	.Q_in(Q_out1),
	.A_out(A_out2),
	.Q_out(Q_out2)
);
Booth b3(
	.A_in(A_out2),
	.M(M),
	.Q_in(Q_out2),
	.A_out(A_out3),
	.Q_out(Q_out3)
);
Booth b4(
	.A_in(A_out3),
	.M(M),
	.Q_in(Q_out3),
	.A_out(A_out4),
	.Q_out(Q_out4)
);
Booth b5(
	.A_in(A_out4),
	.M(M),
	.Q_in(Q_out4),
	.A_out(A_out5),
	.Q_out(Q_out4)
);
Booth b6(
	.A_in(A_out5),
	.M(M),
	.Q_in(Q_out5),
	.A_out(A_out6),
	.Q_out(Q_out6)
);
Booth b7(
	.A_in(A_out6),
	.M(M),
	.Q_in(Q_out6),
	.A_out(A_out7),
	.Q_out(Q_out7)
);
Booth b8(
	.A_in(A_out7),
	.M(M),
	.Q_in(Q_out7),
	.A_out(A_out8),
	.Q_out(Q_out8)
);
Booth b9(
	.A_in(A_out8),
	.M(M),
	.Q_in(Q_out8),
	.A_out(A_out9),
	.Q_out(Q_out9)
);
Booth b10(
	.A_in(A_out9),
	.M(M),
	.Q_in(Q_out9),
	.A_out(A_out10),
	.Q_out(Q_out10)
);
Booth b11(
	.A_in(A_out10),
	.M(M),
	.Q_in(Q_out10),
	.A_out(A_out11),
	.Q_out(Q_out11)
);
Booth b12(
	.A_in(A_out11),
	.M(M),
	.Q_in(Q_out11),
	.A_out(A_out12),
	.Q_out(Q_out12)
);
Booth b13(
	.A_in(A_out12),
	.M(M),
	.Q_in(Q_out12),
	.A_out(A_out13),
	.Q_out(Q_out13)
);
Booth b14(
	.A_in(A_out13),
	.M(M),
	.Q_in(Q_out13),
	.A_out(A_out14),
	.Q_out(Q_out14)
);
Booth b15(
	.A_in(A_out14),
	.M(M),
	.Q_in(Q_out14),
	.A_out(A_out15),
	.Q_out(Q_out15)
);
Booth b16(
	.A_in(A_out15),
	.M(M),
	.Q_in(Q_out15),
	.A_out(A_out16),
	.Q_out(Q_out16)
);
Booth b17(
	.A_in(A_out16),
	.M(M),
	.Q_in(Q_out16),
	.A_out(A_out17),
	.Q_out(Q_out17)
);
Booth b18(
	.A_in(A_out17),
	.M(M),
	.Q_in(Q_out17),
	.A_out(A_out18),
	.Q_out(Q_out18)
);
Booth b19(
	.A_in(A_out18),
	.M(M),
	.Q_in(Q_out18),
	.A_out(A_out19),
	.Q_out(Q_out19)
);
Booth b20(
	.A_in(A_out19),
	.M(M),
	.Q_in(Q_out19),
	.A_out(A_out20),
	.Q_out(Q_out20)
);
Booth b21(
	.A_in(A_out20),
	.M(M),
	.Q_in(Q_out20),
	.A_out(A_out21),
	.Q_out(Q_out21)
);
Booth b22(
	.A_in(A_out21),
	.M(M),
	.Q_in(Q_out21),
	.A_out(A_out22),
	.Q_out(Q_out22)
);
Booth b23(
	.A_in(A_out22),
	.M(M),
	.Q_in(Q_out22),
	.A_out(A_out23),
	.Q_out(Q_out23)
);
Booth b24(
	.A_in(A_out23),
	.M(M),
	.Q_in(Q_out23),
	.A_out(A_out24),
	.Q_out(Q_out24)
);
Booth b25(
	.A_in(A_out24),
	.M(M),
	.Q_in(Q_out24),
	.A_out(A_out25),
	.Q_out(Q_out25)
);

assign Z = {A_out25,Q_out25[25:1]};

endmodule