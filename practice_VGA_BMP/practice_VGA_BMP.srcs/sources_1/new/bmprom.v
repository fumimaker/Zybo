`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/18 22:05:37
// Design Name: 
// Module Name: bmprom
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


module bmprom(
    input CLK,
    input RST,
    input EN,
    input [7:0] addr,
    output reg [15:0] data
    );
    
reg [15:0] rom [0:255];

initial begin
`ifdef SIMULATION
    $readmemh("../../../inuko.raw", rom , 0, 255);
`else
    $readmemh("../../../inuko.raw", rom , 0, 255);
`endif
end

always @(posedge CLK) begin
    if(EN)
        data <= rom[addr];
    end
    
endmodule
