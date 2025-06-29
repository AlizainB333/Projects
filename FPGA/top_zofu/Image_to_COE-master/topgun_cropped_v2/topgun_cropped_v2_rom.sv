module topgun_cropped_v2_rom (
	input logic clock,
	input logic [17:0] address,
	output logic [3:0] q
);

logic [3:0] memory [0:135679] /* synthesis ram_init_file = "./topgun_cropped_v2/topgun_cropped_v2.COE" */;

always_ff @ (posedge clock) begin
	q <= memory[address];
end

endmodule
