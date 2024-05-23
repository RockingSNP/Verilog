module rtl32bit
    (output reg [31:0] Data_Out, 
    input Clock, Reset,En,
    input [31:0] Data_In);

    always @(posedge Clock ,negedge Reset)
    begin
        if (!Reset)
            Data_Out <= 8'h00;
        else
        if (En ==1)
            Data_Out <= Data_In;
        end
endmodule

module tb_rtl32bit
    (input wire [31:0] Data_Out, 
    output reg Clock, Reset,En,
    output reg [31:0] Data_In);

    initial begin
        Clock = 1'b0;
        Reset = 1'b1;
        En = 1'b1;

		$monitor("%t, DataIn = %h, Clock=%b, Reset=%b, Enable=%b, DataOut=%h ",$time,Data_In,Clock,Reset,En,Data_Out);
            {Data_In} = 32'h00;
        #10 {Data_In} = 32'h11;
        #10 {Data_In} = 32'h22;
            En = ~En;
        #10 {Data_In} = 32'h33;
            En = ~En;
        #10 {Data_In} = 32'h44;
        #10 {Data_In} = 32'h55;
        #10 {Data_In} = 32'h66;
            Reset = 1'b0;
        #10 {Data_In} = 32'h77;
        #10 $finish;
	end

    always #5 Clock = ~Clock;
endmodule //testbench

module wb;

    wire [31:0] Data_Out;
    wire Clock, Reset, En;
    wire [31:0] Data_In;

    initial begin
        $dumpfile("32b_rtl.vcd");
        $dumpvars(0, wb);
    end
    rtl32bit dut (Data_Out,Clock,Reset,En,Data_In);
    tb_rtl32bit tb (Data_Out,Clock,Reset,En,Data_In);

endmodule
