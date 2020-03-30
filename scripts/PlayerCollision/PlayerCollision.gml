var _collision = false;

//Horizontal Tiles
if (tilemap_get_at_pixel(collisionMap, x + horizontalSpeed, y)) {
    x -= x mod TILE_SIZE;
    if (sign(horizontalSpeed) == 1) x += TILE_SIZE - 1;
    horizontalSpeed = 0;
    _collision = true;
}

//Horizontal Move Commit
x += horizontalSpeed;

//Vertical Tiles
if (tilemap_get_at_pixel(collisionMap, x , y + verticalSpeed)) {
    y -= y mod TILE_SIZE;
    if (sign(verticalSpeed) == 1) y += TILE_SIZE - 1;
    verticalSpeed = 0;
    _collision = true;
}

//Horizontal Move Commit
y += verticalSpeed;

return _collision;