module priority_encoder (
	input d0,
	input d1,
	input d2,
	input d3,

	output y1,
	output y0

);

wire w1, w2;

not g_1 (w1, d2);

and g_2 (w2, w1, d1);

or g_3 (y0, w2, d3);
or g_4 (y1, d2, d3);


endmodule


