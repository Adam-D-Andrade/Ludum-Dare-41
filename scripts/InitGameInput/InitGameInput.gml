/// @description InitGameInput()

//Space
global.InputSpacePressed = keyboard_check_pressed(vk_space);

// right, left and down game inputs
global.InputRight			= keyboard_check(vk_right) || keyboard_check(ord("D")) || (gamepad_axis_value(0, gp_axislh) > 0.3) || (gamepad_button_check(0, gp_padr));
global.InputLeft			= keyboard_check(vk_left) || keyboard_check(ord("A")) || (gamepad_axis_value(0, gp_axislh) < -0.3) || (gamepad_button_check(0, gp_padl));
global.InputUp				= keyboard_check(vk_up) || keyboard_check(ord("W")) || (gamepad_axis_value(0, gp_axislv) < 0.5) || (gamepad_button_check(0, gp_padu));
global.InputDown			= keyboard_check(vk_down) || keyboard_check(ord("S")) || (gamepad_axis_value(0, gp_axislv) > 0.5) || (gamepad_button_check(0, gp_padd));
	
//Pressed up, down, left, right
global.InputPressedRight	= keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")) || (gamepad_button_check_pressed(0, gp_padr))
global.InputPressedLeft		= keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")) || (gamepad_button_check_pressed(0, gp_padl))
global.InputPressedUp		= keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || (gamepad_button_check_pressed(0, gp_padu));
global.InputPressedDown		= keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || (gamepad_button_check_pressed(0, gp_padd));
  
//Select/Accept and Back
global.InputAccept			= keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || (gamepad_button_check_pressed(0, gp_face1));
global.InputBack			= keyboard_check_pressed(vk_escape) || (gamepad_button_check_pressed(0, gp_face2));

//Released
global.InputReleasedRight	= keyboard_check_released(vk_right) || keyboard_check_released(ord("D")) || (gamepad_button_check_released(0, gp_padr))
global.InputReleasedLeft	= keyboard_check_released(vk_left) || keyboard_check_released(ord("A")) || (gamepad_button_check_released(0, gp_padl))
global.InputReleasedUp		= keyboard_check_released(vk_up) || keyboard_check_released(ord("W")) || (gamepad_button_check_released(0, gp_padu));
global.InputReleasedDown	= keyboard_check_released(vk_down) || keyboard_check_released(ord("S")) || (gamepad_button_check_released(0, gp_padd));

