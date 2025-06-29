module HUD_rom (
	input logic clock,
	input logic [17:0] address,
	output logic [3:0] q
);

logic [3:0] memory [0:132479] /* synthesis ram_init_file = "./new/background.COE" */;

always_ff @ (posedge clock) begin
	q <= memory[address];
end

endmodule

module HUD_palette (
	input logic [3:0] index,
	output logic [3:0] red, green, blue
);

localparam [0:15][11:0] palette = {
	{4'h0, 4'h5, 4'h0},
	{4'hF, 4'h7, 4'h6},
	{4'h0, 4'h0, 4'h0},
	{4'h4, 4'hD, 4'h4},
	{4'hA, 4'h4, 4'h3},
	{4'h8, 4'hC, 4'h8},
	{4'h4, 4'h1, 4'h1},
	{4'h2, 4'h0, 4'h0},
	{4'hE, 4'hC, 4'hC},
	{4'h9, 4'h7, 4'h7},
	{4'h6, 4'h3, 4'h3},
	{4'h1, 4'h0, 4'h0},
	{4'h1, 4'h4, 4'h1},
	{4'h7, 4'h5, 4'h5},
	{4'hC, 4'hA, 4'hA},
	{4'hA, 4'h3, 4'h1}
};

assign {red, green, blue} = palette[index];

endmodule

