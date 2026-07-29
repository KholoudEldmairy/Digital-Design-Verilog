module FA_data_flow(

input wire A,
input wire B,
input wire Cin,
output wire Sum_df,
output wire Carry_out_df

);

//Dataflow
assign Sum_df= A ^ B ^ Cin;
assign Carry_out_df = ((A ^ B) & Cin)| (A & B) ;



endmodule