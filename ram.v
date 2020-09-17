module ram (clk, rd_ena, wr_ena, addr, data_in, data_out);

input rd_ena, wr_ena, clk;
input [3:0] addr, data_in;
output reg [3:0] data_out;
reg [3:0] mem[3:0];

always @ (posedge clk) begin
	
	if ((rd_ena == 0) && (wr_ena == 0)) begin
		data_out <= 4'b0000;
	end
	else begin
		if(rd_ena == 0) begin
			data_out <= mem[addr];
		end
		if (wr_ena == 0) begin
			mem[addr] <= data_in;
		end
	end

end
endmodule

