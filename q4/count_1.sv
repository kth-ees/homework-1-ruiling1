module count_1 (
  input logic [3:0] a,
  output logic [2:0] out
);
  // …
  always_comb begin
    out=3'b000;
    for(int i=0;i<4;i++)begin
      out=a[i]?(out+1):out;
    end
  end
  // …
endmodule
