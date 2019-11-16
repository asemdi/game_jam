//text_draw()

/*
**  Description:
**      This will draw all textboxes
**      This script should be called in some kind of draw event.
**  
**  Usage:
**      text_draw()
**
**  Arguments:
**      <none>
**
**  Returns:
**      <nothing>
**
*/

//Recreate surface if destroyed or if window was resized
if (!surface_exists(global.text_surf) || global.text_old_ratio != __view_get( e__VW.WPort, 0 )/__view_get( e__VW.HPort, 0 )) {
    text_resize_surfaces();
}
surface_set_target(global.text_surf);
draw_clear_alpha(c_white,0);
text_draw_logic();
surface_reset_target();

draw_surface_stretched(global.text_surf,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ));