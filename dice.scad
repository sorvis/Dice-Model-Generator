size=convertFromInches(2);
numbers = [1, 2, 3, 5, 8, 13];
numberDepth = 2;
fontSize = 1 * size;

difference(){
    cube([size,size,size], center=true);
    !linear_extrude(height = numberDepth, center = true) {
        text("13", fontSize, halign=[50, "center"]);
    }
}

function convertFromInches(inches) = inches * 2.54 * 10;