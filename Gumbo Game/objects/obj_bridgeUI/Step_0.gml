event_inherited();
var closest_bridge = instance_nearest(x, y, obj_bridge);

// Teleport to the closest bridge's position
if (closest_bridge != noone) {
    x = closest_bridge.x;
    y = closest_bridge.y;
}