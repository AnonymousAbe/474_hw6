module tas(
	input			clk_50,		//50Mhz input clock
	input 			clk_2, 		//2Mhz input clock
	input			reset_n,	//reset async active low
	input			serial_data,	//serial input data
	input			data_ena,	//serial data enable
	output			ram_wr_n,	//write strobe to ram
	output [7:0]		ram_data,	//ram data
	output [10:0]		ram_addr	//ram address
);



//internal registers
reg [7:0] S2P_reg;
reg [3:0] count;
reg [3:0] num;






//assign connections



//enum values for S2P State Machine
enum reg [1:0] {IDLE, PUSH, FIN} s2p_ps, s2p_ns;

//enum values for COMP State Machine
enum reg [1:0] {WAIT, COMP, ADD, DIV} comp_ps, comp_ns;

//enum values for RAM State Machine
enum reg {RWAIT, SEND} ram_ps, ram_ns;




//S2P next state logic
always_comb begin
	unique case( s2p_ps )
	  IDLE: begin

	  end
	  PUSH: begin

	  end
	  FIN: begin

	  end
	endcase

end






//S2P state machine control
always_ff @( posedge clk_50, negedge reset_n) begin
	if(!reset_n) begin
	  s2p_ps <= IDLE;
	end
	else begin
	  s2p_ps <= s2p_ns;
	  num <= count;
	  if((s2p_ns == PUSH || s2p_ps == PUSH) && count != 8) begin
	    S2P_reg <= S2P_reg >> 1;
	  end
	end
end




//COMP state machine control
always_ff @(posedge clk_50, negedge reset_n) begin

end




//RAM state machine control
always_ff @(posedge clk_2, negedge reset_n) begin

end



endmodule
