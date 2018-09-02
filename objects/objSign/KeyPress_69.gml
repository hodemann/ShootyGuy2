
if (collision_circle(x, y, 70, objPlayer, false, true)) and (instance_exists(objPlayer)) and (!instance_exists(objText))
{
	with (instance_create_layer(x,y-64,layer,objText))
	{
		text = other.text;
		length = string_length(text)
	}
	
	with (objCamera)
	{
		follow = other.id
	}
}
