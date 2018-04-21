

//Zoom
view_zoom       = 1;
view_max_zoom   = 10;

//Screen Shake script
ease            = 20
xrange          = 0.5
yrange          = 5
anglerange      = 1
intensity       = 0;

shake           = false;

newtarget       = false;

idletimer       = 0;
htimer          = 0;
vtimer          = 0;
range           = 100;

if instance_exists(oPlayer) {
	x = oPlayer.x;
	y = oPlayer.y;
}
