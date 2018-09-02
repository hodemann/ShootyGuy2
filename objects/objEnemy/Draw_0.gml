/// @description Flash
draw_self();

if (flash > 00)
{
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset()
}
