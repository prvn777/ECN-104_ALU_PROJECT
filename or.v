module OR(A, B, Output);
   
    input[31:0]A;
    input[31:0]B;

    output reg[31:0]Output;

    
    always@(A, B)
    begin
       
        Output = A | B;
    end
endmodule
