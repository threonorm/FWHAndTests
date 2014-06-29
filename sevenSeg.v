module sevenSeg(in_Number,out_Seven,out_neg,clock);
	input [4:0]in_Number;
	input clock;

	reg [6:0]regOut;
	reg pointer;
	output out_neg;
	output [6:0]out_Seven;

	assign out_neg = ~pointer;	
	assign out_Seven[6:0] = ~regOut[6:0] ;	

	always @(posedge clock) begin
		case (in_Number)
			5'b00000: begin regOut<= 7'b0111111 ;  pointer<=0;end    
			5'b00001:  begin  regOut<= 7'b0000110 ;pointer<=0;end  
			5'b00010:  begin regOut<= 7'b1011011 ; pointer<=0;end  
			5'b00011:  begin regOut<= 7'b1001111 ; pointer<=0;end  
			5'b00100:  begin regOut<= 7'b1100110 ; pointer<=0;end  
			5'b00101:  begin regOut<= 7'b1101101 ; pointer<=0;end  
			5'b00110: begin regOut<= 7'b1111100 ;  pointer<=0;end    
			5'b00111:  begin regOut<= 7'b0000111 ; pointer<=0;end   
			5'b01000:  begin regOut<= 7'b1111111 ; pointer<=0;end
			

			5'b11111:  begin  regOut<= 7'b0000110 ;pointer<=1;end    
			5'b11110:  begin regOut<= 7'b1011011 ; pointer<=1;end  
			5'b11101:  begin regOut<= 7'b1001111 ; pointer<=1;end  
			5'b11100:  begin regOut<= 7'b1100110 ; pointer<=1;end  
			5'b11011:  begin regOut<= 7'b1101101 ; pointer<=1;end  
			5'b11010: begin regOut<= 7'b1111100 ;  pointer<=1;end  
			5'b11001:  begin regOut<= 7'b0000111 ; pointer<=1;end    
			5'b11000:  begin regOut<= 7'b1111111 ; pointer<=1;end
			default: begin regOut<= 7'b1000000 ; end 
		endcase
	end
endmodule
