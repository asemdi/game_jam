/// @description text_room_to_surface_y(y)
/// @param y

/*  
**  Description:
**      This translates the room coordinates to the coordinates of the surface.
**      Change this if you are not using a surface.
**  
**  Usage:
**      text_room_to_surface_y(y)
**
**  Arguments:
**      y  real   A y position to translate
**
**  Returns:
**      real - translated y position
**
*/

return (argument0-__view_get( e__VW.YView, 0 ))*(text_get_surface_h()/__view_get( e__VW.HView, 0 ));