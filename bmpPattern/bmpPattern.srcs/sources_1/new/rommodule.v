`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/02 17:23:10
// Design Name: 
// Module Name: rommodule
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rommodule(
    input CLK,
	input EN,
	input [8:0] ADDR,
	output reg [15:0] DATA
);

reg [15:0] rom [0:151249];

initial begin
`ifdef SIMULATION
	$readmemh("../../../../akarimini16bit.raw", rom, 0, 151249);
`else
	$readmemh("../../../../akarimini16bit.raw", rom, 0, 151249);
`endif
end

always @(posedge CLK) begin
	if (EN)
		DATA <= rom[ ADDR ];
end


endmodule
