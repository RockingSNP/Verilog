module shiftreg16b
    (output reg [15:0] A,B,C,D,E,F,G,H, 
    input Clock, Reset,
    input [15:0] Din);

    always @(posedge Clock ,negedge Reset)
    begin
        if (!Reset) {A,B,C,D,E,F,G,H} <= 128'h00;
        else
            begin
                A <= Din; B <= A; C <= B; D <= C; E<= D ;F <= E ;G <= F ; H <= G;
            end
    end
endmodule

module tb_shiftreg16b
    (input wire [15:0] A,B,C,D,E,F,G,H, 
    output reg Clock, Reset,
    output reg [15:0] Din);

    initial begin
        Clock = 1'b0;
        Reset = 1'b1;

		$monitor("%t, Din = %h, Clock=%b, Reset=%b, A=%h B=%h C=%h D=%h E=%h F=%h G=%h H=%h ",$time,Din,Clock,Reset,A,B,C,D,E,F,G,H);
            Din = 16'h00;
        #10 Din = 16'h11;
        #10 Din = 16'h22;
        #10 Din = 16'h33;
        #10 Din = 16'h44;
        #10 Din = 16'h55;
        #10 Din = 16'h66;
        #10 Din = 16'h77;
        #10 $finish;
	end

    always #5 Clock = ~Clock;
endmodule //testbench

module wb;

    wire [15:0] A,B,C,D,E,F,G,H;
    wire Clock, Reset;
    wire [15:0] Din;

    initial begin
        $dumpfile("16b_shift_reg.vcd");
        $dumpvars(0, wb);
    end
    shiftreg16b dut (A,B,C,D,E,F,G,H,Clock,Reset,Din);
    tb_shiftreg16b tb (A,B,C,D,E,F,G,H,Clock,Reset,Din);

endmodule
