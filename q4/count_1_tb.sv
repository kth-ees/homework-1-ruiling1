module count_1_tb;

  // Inputs
  logic [3:0] a;

  // Outputs
  logic [2:0] out;
  count_1 uut(
    .a(a),
    .out(out)
  );
  initial begin
    $display("Time |   a    | out | expected");
    for (int i = 0; i < 16; i++) begin
      a = i;             
      #1;                  
      $display("%4t | %04b |  %0d  |    %0d",
                $time, a, out, $countones(a));
      if (out !== $countones(a)) begin
        $error("Mismatch! a=%b out=%0d expected=%0d", a, out, $countones(a));
      end
    end
  end
endmodule
