module MultiDropBus16b
    (input [15:0] databus,
     input A_en,B_en,C_en,D_en,Clock,Reset,
     output reg [15:0] RegA ,RegB ,RegC ,RegD);

    always @(posedge Clock , negedge Reset)
    begin
        if (!Reset)
            {RegA,RegB,RegC,RegD} <= 64'h00;
        else
            case({A_en,B_en,C_en,D_en})
                4'b1000 : RegA <= databus;
                4'b0100 : RegB <= databus;
                4'b0010 : RegC <= databus;
                4'b0001 : RegD <= databus;                    
            endcase
    end

endmodule

module tb_MultiDropBus16b (
    output reg [15:0] databus,
    output reg A_en,B_en,C_en,D_en,Clock,Reset,
    input [15:0] RegA ,RegB ,RegC ,RegD
);
    initial
    begin
        Clock = 1'b0;
        Reset = 1'b1;
        databus = 16'h88;

		$monitor("%t, DataBus = %h, Clock=%b, Reset=%b, A_en=%b B_en=%b C_en=%b D_en=%b ,RegA=%h ,RegB=%h ,RegC=%h ,RegD=%h ,",$time,databus,Clock,Reset,A_en,B_en,C_en,D_en,RegA,RegB,RegC,RegD);
            {A_en,B_en,C_en,D_en} = 4'd0;       
        #10 {A_en,B_en,C_en,D_en} = 4'd1;
        #10 {A_en,B_en,C_en,D_en} = 4'd2;
        #10 {A_en,B_en,C_en,D_en} = 4'd3;
            databus = 16'h 77;
        #10 {A_en,B_en,C_en,D_en} = 4'd4;
        #10 {A_en,B_en,C_en,D_en} = 4'd5;
        #10 {A_en,B_en,C_en,D_en} = 4'd6;
        #10 {A_en,B_en,C_en,D_en} = 4'd7;
        #10 {A_en,B_en,C_en,D_en} = 4'd8;       
        #10 $finish;
	end

    always #5 Clock = ~Clock;
endmodule //testbench

module wb;
    wire [15:0] databus;
    wire A_en,B_en,C_en,D_en,Clock,Reset;
    wire [15:0] RegA ,RegB ,RegC ,RegD;

    initial begin
        $dumpfile("multi_drop_bus_16b.vcd");
        $dumpvars(0, wb);
    end
    MultiDropBus16b dut (databus,A_en,B_en,C_en,D_en,Clock,Reset,RegA ,RegB ,RegC ,RegD);
    tb_MultiDropBus16b tb (databus,A_en,B_en,C_en,D_en,Clock,Reset,RegA ,RegB ,RegC ,RegD);
endmodule