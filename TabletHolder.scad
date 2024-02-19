// Tablet Holder
// Designed by: James R. Behrens

// The size of tablet that will fit in the holder is limited by the size of your print bed.
// I printed a holder for an 10" Amazon Fire HD tablet on a Prussa MK2S (250x220).
// I printed a holder for my 7" Samsung Nook on a DaVinci 1.0 (200x200).
// A holder for my 7" Google Nexus 7 fits on a DaVinci 1.0 (200x200).

// There are three critical dimensions; the width of your tablet, the thickness of your tablet
// and the size of the border around the screen.

// known tablets, set to true to make one of these. If more than one is true then the you may
// not get the holder that you want !!!
AmazonFireHD10 = false;         // 10inch version
SamsungNook = false;            // 7"
GoogleNexus7 = false;           // 7"
Lenovo_M8_FHD = false;          // 8"
CustomTablet = false;    // make this one true for your custom tablet


// sizes of known tablets, do not change these.
// Amazon Fire HD, 10"
AmazonFireHD10Width = 164;
AmazonFireHD10Thickness = 8.8;    // 9mm with skin
AmazonFireHD10Border = 21;

SamsungNookWidth = 108.5;
SamsungNookThickness = 10;
SamsungNookBorder = 5;

GoogleNexus7Width = 114;
GoogleNexus7Thickness = 9;
GoogleNexus7Border = 9.5;

Lenovo_M8_FHD_Width = 122.6;
Lenovo_M8_FHD_Thickness = 8.15;
Lenovo_M8_FHD_Thickness = 8.50;
Lenovo_M8_FHD_Border = 5;


//******************************************************************************
// Change these values for your tablet, they are currently the same as the Samsung Nook tablet.
// All dimensions  are in mm.

// Change the value below to the width of your tablet. Measure across the short side of the tablet.
CustomWidth = 108.5;

// Change the value below to the thickness of your tablet. Measure across the thickness of your tablet.
CustomThickness = 10;

// Change the value below to the width the border around the display on your tablet. Measure from the
// edge to the screen.
CustomBorder = 10;
//******************************************************************************

//==============================================================================
// After setting the three values above, click on the Render Icon above (second to last icon) or press
// the F6 key or click on Design on the top menubar and then click on Render or press F6.

// When the design has finished rendering, click on the STL icon above and save the STL file someplace
// where you can find it. Now go slice it and print it.
//==============================================================================
D = 9;
R = D / 2;
HandleLength = 37 + R;
HandleIY = 100 + D;

Floor = 4;
Roof = 4;

$fn = 50;
if (CustomTablet == true)
{
    TopLevel(CustomWidth, CustomThickness, CustomBorder);
}    
 else if (AmazonFireHD10 == true)
{
    TopLevel(AmazonFireHD10Width, AmazonFireHD10Thickness, AmazonFireHD10Border);
}
else if (SamsungNook == true)
{
    TopLevel(SamsungNookWidth, SamsungNookThickness, SamsungNookBorder);
}
else if (GoogleNexus7 == true)
{
    TopLevel(GoogleNexus7Width, GoogleNexus7Thickness, GoogleNexus7Border);
}
else if (Lenovo_M8_FHD == true)
{
    TopLevel(Lenovo_M8_FHD_Width, Lenovo_M8_FHD_Thickness, Lenovo_M8_FHD_Border);
}
else
{
    // test print
    difference()
    {
        TopLevel(Lenovo_M8_FHD_Width, Lenovo_M8_FHD_Thickness, Lenovo_M8_FHD_Border);
        
        // remove right side
        translate([50, 0, 0]) cube([200, 120, 30]);

        // remove left side
        translate([0, 0, 0]) cube([38, 120, 30]);
    }   //  difference
}


module TopLevel(width, thickness, border)
{
    // reduce border by 1
    border = border - 1;
    HolderZ = thickness + Floor + Roof;
    X = width;
    TotalX = width + HandleLength + HandleLength;   // must be less than PrintBed !!
    echo(TotalX);

    // holders
    difference()
    {
        union()
        {
            // handles
            translate([R, HandleIY + R, R]) Handle(HolderZ);
            translate([width + HandleLength + HandleLength - R, HandleIY + R, R]) 
                mirror([180, 0, 0]) Handle(HolderZ);
            
            translate([HandleLength, R, 0]) cube([width, HandleIY, HolderZ]);
            // long rails
            translate([HandleLength, HandleIY + R, R]) rotate([0, 90, 0]) cylinder(d = D, h = width);
            translate([HandleLength, R, R]) rotate([0, 90, 0]) cylinder(d = D, h = width);
        }
        
        translate([HandleLength, R, 0])
        {
            translate([0, 3, Floor]) cube([width, HandleIY + R, thickness]);
            translate([border, 0, Floor + thickness]) cube([width - (border * 2), HandleIY, Roof]);
            translate([border, 0, Floor + R + 0.5]) cube([width - (border * 2), R, thickness + Roof]);
            
            // chamfer edge
            translate([-R, -R, D]) rotate([45, 0, 0]) cube([width + D, 20, 10]);
            
            // USB cutout. Lenovo has an offset USB connector
            if (Lenovo_M8_FHD == true)
                translate([98, -R, Floor]) cube([18, 20, D]);
            else
                translate([(width / 2) - 7, -R, Floor]) cube([14, 20, D]);

            // plastic saver
            x = HandleIY * 0.20;
            o = x + x + (x * sqrt(2));
            translate([(width - o) / 2, (HandleIY - o) / 2, 0]) Octagon(x, Floor);
        }
    }   //  difference
}   //  TopLevel


module Octagon(x, z)
{
    h = x * sqrt(2);
    x2 = x + h;
    x3 = x + x + h;
    
    linear_extrude(height = z, center = false, convexity = 10, twist = 0)
        polygon(points=[[x, 0], [x2, 0], [x3, x], [x3, x2], [x2, x3], [x, x3], [0, x2], [0, x]]);
}   //  Octagon

module Chamfer(holderZ)
{
    linear_extrude(height = HandleIY, center = false, convexity = 10, twist = 0)
        polygon(points=[[3, 0], [R, 0], [R, holderZ], [3, holderZ], [0, holderZ - 3], [0, 3], [3, 0]]);
}   //  Chamfer

module Handle(holderZ)
{
    ix = HandleLength - R - 9;
    
    rotate([90, 0, 0])
    { 
        cylinder(d = D, h = HandleIY);
        sphere(d = D);
        translate([0, 0, HandleIY]) sphere(d = D);
        rotate([0, 90, 0]) cylinder(d = D, h = ix + D);
        translate([0, 0, HandleIY]) rotate([0, 90, 0]) cylinder(d = D, h = ix + D);
        
        translate([ix + R, -R, 0]) Chamfer(holderZ);
    }
}   //  Handle
