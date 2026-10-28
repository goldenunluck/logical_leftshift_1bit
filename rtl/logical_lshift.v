`default_nettype none
module logical_lshift(
	input [7:0] in,
	output cout,
	output reg [7:0] out
);
	integer i;
	assign cout = in[7];
	always @(*) begin
		for ( i = 0; i < 8 ; i = i + 1 ) begin
			if ( i == 0 ) out[i] = 1'b0;
			else out[i] = in[i-1];
		end
	end
endmodule
