/// @description text_room_to_surface_x(x)
/// @param x

/*  
**  Description:
**      This translates the room coordinates to the coordinates of the surface.
**      Change this if you are not using a surface.
**  
**  Usage:
**      text_room_to_surface_x(x)
**
**  Arguments:
**      x  real   A x position to translate
**
**  Returns:
**      real - translated x position
**
*/

return (argument0-__view_get( e__VW.XView, 0 ))*(text_get_surface_w()/__view_get( e__VW.WView, 0 ));