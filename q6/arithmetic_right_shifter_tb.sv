module arithmetic_right_shifter_tb;

  localparam N = 8;

  // complete
  // Inputs
  logic [N-1:0] input_data;
  logic [1:0]   control;
  logic [N-1:0] shifted_result;

  arithmetic_right_shifter #(.N(N)) dut (
    .input_data(input_data),
    .control(control),
    .shifted_result(shifted_result)
  );

   initial begin
   
    //01011110 
    input_data = 8'b01011110;
     for (int i = 0; i < 7; i++) begin
      control = i;
      #1; 
      $display("Input=%b , Shift=%b -> Output=%b", 
                input_data, i, shifted_result);
    end

    //11011110 ( MSB=1)
    input_data = 8'b11011110;
     for (int i = 0; i < 7; i++) begin
      control = i;
      #1;
      $display("Input=%b, Shift=%b -> Output=%b", 
                $signed(input_data), i, $signed(shifted_result));
    end
endmodule
