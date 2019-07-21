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
    input [16:0] addr, //9bit=512
    output reg [8:0] data // 1pixel=9bit
);


reg [8:0] rom [0:16]; //9bit*320*240<17bit

initial begin
`ifdef SIMULATION
    $readmemh("../../../inuko9bit.raw", rom , 0, 16);
`else
    $readmemh("../../../inuko9bit.raw", rom , 0, 16);
`endif
end

always @(posedge CLK) begin
    if(!RST)
        data <= rom[addr];
    end
    
endmodule
