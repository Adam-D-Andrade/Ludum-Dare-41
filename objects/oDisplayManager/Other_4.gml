/// @description Insert description here
// You can write your code in this editor

view_camera[0] = camera;
view_enabled = true;
view_visible[0] = true;

if layer_exists("InstancesFG"){
	if (!instance_exists(oCamera)) {
		instance_create_layer(x, y, "InstancesFG", oCamera);
	}
}