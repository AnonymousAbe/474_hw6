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
reg [7:0]  S2P_reg;
reg [3:0]  count;
reg [3:0]  num;
reg	   done;
reg [7:0]  shifted;
reg [7:0]  data;

reg [3:0]  d_cnt;
reg [3:0]  d_num;
reg [10:0] tot;
reg [10:0] sum;
reg [7:0]  divi;
reg 	   div_done;

reg [10:0] addr;
reg [10:0] prev;
reg 	   sent;
reg 	   send;
reg [7:0]  send_data;




//assign connections
assign ram_data = send_data;
assign ram_wr_n = sent;
assign ram_addr = addr;


//enum values for S2P State Machine
enum reg [1:0] {IDLE, PUSH, FIN} s2p_ps, s2p_ns;

//enum values for COMP State Machine
enum reg [1:0] {WAIT, COMP, ADD, DIV} comp_ps, comp_ns;

//enum values for RAM State Machine
enum reg {RWAIT, SEND} ram_ps, ram_ns;



//save S2P_reg to data when done
always_ff @( posedge done ) begin
	data <= S2P_reg;
end



//S2P next state logic
always_comb begin
	unique case( s2p_ps )
	  IDLE: begin
	    done = 0;
	    count = 1;
	    S2P_reg = {serial_data, shifted[6:0]};
	    if(data_ena) s2p_ns = PUSH;
	    else	 s2p_ns = IDLE;
	  end
	  PUSH: begin
	    count = num + 1;
	    S2P_reg = {serial_data, shifted[6:0]};
	    if(count == 8) s2p_ns = FIN;
	  end
	  FIN: begin
	    done = 1;
	    count = 0;
	    s2p_ns = IDLE;
	  end
	endcase

end



//COMP next state logic
always_comb begin
	unique case( comp_ps )
	  WAIT: begin
	    d_cnt = 0;
	    div_done = 0;
	    tot = 0;
	    if(done) comp_ns = COMP;
	    else     comp_ns = WAIT;
	  end
	  COMP: begin
	    if( data == 8'hA5 || data == 8'hC3 ) comp_ns = ADD;
	    else				 comp_ns = WAIT;
	  end
	  ADD: begin
	    if(done) begin
	      tot = sum + data;
	      d_cnt = d_num + 1;
	    end
	    if (d_cnt == 5) comp_ns = DIV;
	  end
	  DIV: begin
	    divi = sum >> 2;
	    div_done = 1;
	    comp_ns = WAIT;
	  end
	endcase
end



//RAM next state logic
always_comb begin
	unique case( ram_ps )
	  RWAIT: begin
	    if(div_done) send = 1;
	    if(send) ram_ns = SEND;
	    else     ram_ns = RWAIT;
	    addr = prev - 1;
	  end
	  SEND: begin
	    addr = prev - 1;
	    send = 0;
	    ram_ns = RWAIT;
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
	    shifted <= S2P_reg >> 1;
	  end
	end
end




//COMP state machine control
always_ff @(posedge clk_50, negedge reset_n) begin
	if(!reset_n) begin
	  comp_ps <= WAIT;
	end
	else begin
	  comp_ps <= comp_ns;
	  if(done) begin
	    d_num <= d_cnt;
	    sum <= tot;
	  end
	end
end




//RAM state machine control
always_ff @(posedge clk_2, negedge reset_n) begin
	if(!reset_n) begin
	  ram_ps <= RWAIT;
	  prev <= 10'h0800;
	end
	else begin
	  ram_ps <= ram_ns;
	  sent <= 0;
	  if(send) begin
	    prev <= addr;
	    sent <= 1;
	    send_data <= divi;
	  end
	end
end



endmodule
