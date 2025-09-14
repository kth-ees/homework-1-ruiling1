module decoder_tb;

  // Testbench signals
  logic [3:0] binary;
  logic [15:0] one_hot;

  // Instantiate the decoder module
  decoder uut (
    .binary(binary),
    .one_hot(one_hot)
  );
 initial begin
	for(int i=0;i<16;i++)begin
		binary=i;
		#10;
		if(one_hot[binary]==1)begin
			$display("The %d\t outpot is successful",i);
		end
	end
 end
 
endmodule
