module arithmetic_right_shifter #(parameter N) (
  input logic [N-1:0] input_data,
  input logic [1:0] control,
  output logic [N-1:0] shifted_result
);

  // complete the module
    assign shifted_result = (input_data >> control) | 
                        ({N{input_data[N-1]}} << (N - control));
endmodule
