var i;
numRows = 8;
blockWidth = 48;
blockHeight = 16;
blocksPerRow = floor(room_width / blockWidth);
xOffset = (room_width - (blocksPerRow * blockWidth)) / 2;
yOffset = xOffset;
for(i = 0; i < blocksPerRow * numRows; i++) {
	newX = xOffset + (i % blocksPerRow) * blockWidth;
	newY = yOffset + floor(i / blocksPerRow) * blockHeight;
	instance_create_depth(newX, newY, 0, block);
}