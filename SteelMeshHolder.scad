errorValue = 0.1;
boardX = 22.8;
boardY = 26.8;
boardThinkness = 1.6;
steelMeshX = 40.5;
steelMeshY = 40.5;
wall = 1.0;
boardOffsetX = 0.0;
boardOffsetY = 0.0;

difference() {
    translate([0,0,-(boardThinkness+wall)/2]) cube([steelMeshX + errorValue + wall, steelMeshY + errorValue + wall, boardThinkness + wall], true);
    translate([0,0, -errorValue/2]) translate([0,0,boardThinkness / 2 - wall/2 + errorValue / 2]) cube([steelMeshX + errorValue, steelMeshY + errorValue, (boardThinkness + wall + errorValue)], true);
    translate([boardOffsetX, boardOffsetY, 0]) cube([boardX+errorValue, boardY+errorValue,(boardThinkness + wall) * 4], true);
    translate([0,-steelMeshY/2,0]) cube([steelMeshX / 4, steelMeshY, wall * 2 + boardThinkness], true);
    translate([0,-steelMeshY/2,0]) cube([steelMeshX / 4, steelMeshY/16, (wall + boardThinkness) * 4], true);
}
