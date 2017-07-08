size=convertFromInches(2);
numbers = [1, 2, 3, 5, 8, 13];
numberDepth = 4;
fontSize = 0.75 * size;
offst = size / 2 - numberDepth / 2;

difference(){
    color("gray") cube(size, center=true);
    translate([0, 0, offst]) rotate([0, 0, 0]) write(txt = numbers[0]);
    translate([0, offst, 0]) rotate([-90, 90, 0]) write(txt = numbers[1]);
    translate([offst, 0, 0]) rotate([90, 180, 90]) write(txt = numbers[2]);
    translate([-offst, 0, 0]) rotate([90, 0, -90]) write(txt = numbers[3]);
    translate([0, -offst, 0]) rotate([90, -90, 0]) write(txt = numbers[4]);
    translate([0, 0, -offst]) rotate([180, 0, 0]) write(txt = numbers[5]);
}

function convertFromInches(inches) = inches * 2.54 * 10;

module write(txt) {
    #translate ([0, 0, 0]) linear_extrude(height = numberDepth) {
        text(str(txt), size = fontSize, halign = "center", valign = "center", $fn = 16);
    }
}