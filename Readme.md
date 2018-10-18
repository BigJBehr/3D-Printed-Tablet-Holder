<<<<<<< HEAD
# 3D Printer Tablet Holder
This project is for a 3D printed tablet holder. The tablet holder was designed using OpenSCAD. The OpenSCAD source code and three STL files are included. The STL files are for an Amazon Fire HD (10") tablet, Samsung Nook tablet and a Google Nexus 7 tablet.

Complete instructions for editing the OpenSCAD source code file to customize it for your tablet and some things to try if it will not fit on your 3D printer's print bed can be found in the Instructable; 3D Printed Tablet Holder. The Instructable can be found here; https://www.instructables.com/id/3D-Printed-Tablet-Holder

If you do not have one of the tablets that fit the premade STL fles then you can edit the OpenSCAD source file to create a custom table holder to fit your tablet.

If you want to print one of the premade STL files then just load it into your favorite slicer and slice it with supports turned on. It will not print properly without supports. After slicing, print it on your 3D printer or send it out to a 3D prnting service to be printed.

As a rule of thumb, a 7" tablet should fit on a 200mm print bed. A 10" tablet should fit on a 250mm print bed.
 
## To Make a Custom Tablet Holder
You will need to download and install a copy of OpenSCAD. You can get it for free from; http://www.openscad.org
You will also need the file; TabletHolder.scad from this project.

The TabletHolder.scad is the source code fle for the tablet holder. It has been setup to be easily modified to create a custom tablet holder.

The first thing to do is to measure the width, thickness and border size of your tablet. These dimensions are then entered into the OpenSCAD source file as dimensions in millimeters. The width is the short side of the tablet. For the border measurement, measure the distance from the short side edge to the edge of the actual screen (visible area) of the tablet. It helps to make this measurement with the tablet turned on. 

Open OpenSCAD
Load TabletHolder.scad by clicking on the green "Open" button on the start screen.
Use the file browser to browse to where you stored TabletHolder.scad
Either double click on the file name of click it once and then click on the "Open" button.

The left pane of OpenSCAD is the editor pane. The right pane is for viewing the rendered object. Rendering is the process of translating the source code statements into a viewable 3D object. A console pane is below the view pane.

The editor works like most plain text editors, ie Notepad.

Locate these lines in TabletHolder.scad in the editor pane;

    _//******************************************************************************_
    _// Change these values for your tablet, they are currently the same as the Samsung Nook tablet._

    _// Change the value below to the width of your tablet. Measure across the short side of the tablet._
    _CustomWidth = 108.5;_

    _// Change the value below to the thickness of your tablet. Measure across the thickness of your tablet._
    _CustomThickness = 10;_

    _// Change the value below to the width the border around the display on your tablet. Measure from the_
    _// edge to the screen._
    _CustomBorder = 10;_
    _//******************************************************************************_

CustomWidth = 108.5; defines the width of your tablet, change the value after the equals sign to the width of your tablet, in millimeters. Make sure to leave the equals sign ('=') and trailing semicolon (';') intact.

CustomThickness = 10; defines the thickness of your tablet, change the value after the equals sign to the thickness of your tablet, in millimeters. Make sure to leave the equals sign ('=') and trailing semicolon (';') intact.

CustomBorder = 10; defines the border width of your tablet, change the value after the equals sign to the border width of your tablet, in millimeters. Make sure to leave the equals sign ('=') and trailing semicolon (';') intact.

Save your changes by clicking on the third icon from the left on the top of the editor pane or br clicking on "File", "Save" or "Save as..." from the top menu.

Render the tablet holder by clicking the second to last icon from the right, on the top of the editor pane.

You can change the viewing angle of your rendered 3D object by draging the mouse cursor around in the view pane.

Convert the 3D object in the view pane to an STL file by clicking on the STL icon, last icon on the right, on the top of the editor pane. Use the file browser that pops up to change the name of the STL file and to save it where you want it stored.

Close OpenSCAD, you are done. You can now load the STL file for your custom tablet holder into your favorite slicer, slice it with supports enabled and then send the result to your 3D printer.

=======
# 3D Printer Tablet Holder
This project is for a 3D printed tablet holder. The tablet holder was designed using OpenSCAD. The OpenSCAD source code and three STL files are included. The STL files are for an Amazon Fire HD (10") tablet, Samsung Nook tablet and a Google Nexus 7 tablet.

Complete instructions for editing the OpenSCAD source code file to customize it for your tablet and some things to try if it will not fit on your 3D printer's print bed can be found in the Instructable; 3D Printed Tablet Holder. The Instructable can be found here: 

If you do not have one of the tablets that fit the premade STL fles then you can edit the OpenSCAD source file to create a custom table holder to fit your tablet.

If you want to print one of the premade STL files then just load it into your favorite slicer and slice it with supports turned on. It will not print properly without supports. After slicing, print it on your 3D printer or send it out to a 3D prnting service to be printed.

As a rule of thumb, a 7" tablet should fit on a 200mm print bed. A 10" tablet should fit on a 250mm print bed.
 
## To Make a Custom Tablet Holder
You will need to download and install a copy of OpenSCAD. You can get it for free from; http://www.openscad.org
You will also need the file; TabletHolder.scad from this project.

The TabletHolder.scad is the source code fle for the tablet holder. It has been setup to be easily modified to create a custom tablet holder.

The first thing to do is to measure the width, thickness and border size of your tablet. These dimensions are then entered into the OpenSCAD source file as dimensions in millimeters. The width is the short side of the tablet. For the border measurement, measure the distance from the short side edge to the edge of the actual screen (visible area) of the tablet. It helps to make this measurement with the tablet turned on. 

Open OpenSCAD
Load TabletHolder.scad by clicking on the green "Open" button on the start screen.
Use the file browser to browse to where you stored TabletHolder.scad
Either double click on the file name of click it once and then click on the "Open" button.

The left pane of OpenSCAD is the editor pane. The right pane is for viewing the rendered object. Rendering is the process of translating the source code statements into a viewable 3D object. A console pane is below the view pane.

The editor works like most plain text editors, ie Notepad.

Locate these lines in TabletHolder.scad in the editor pane;
###
//******************************************************************************
// Change these values for your tablet, they are currently the same as the Samsung Nook tablet.

// Change the value below to the width of your tablet. Measure across the short side of the tablet.
CustomWidth = 108.5;

// Change the value below to the thickness of your tablet. Measure across the thickness of your tablet.
CustomThickness = 10;

// Change the value below to the width the border around the display on your tablet. Measure from the
// edge to the screen.
CustomBorder = 10;
//******************************************************************************
##
CustomWidth = 108.5; defines the width of your tablet, change the value after the equals sign to the width of your tablet, in millimeters. Make sure to leave the equals sign ('=') and trailing semicolon (';') intact.

CustomThickness = 10; defines the thickness of your tablet, change the value after the equals sign to the thickness of your tablet, in millimeters. Make sure to leave the equals sign ('=') and trailing semicolon (';') intact.

CustomBorder = 10; defines the border width of your tablet, change the value after the equals sign to the border width of your tablet, in millimeters. Make sure to leave the equals sign ('=') and trailing semicolon (';') intact.

Save your changes by clicking on the third icon from the left on the top of the editor pane or br clicking on "File", "Save" or "Save as..." from the top menu.

Render the tablet holder by clicking the second to last icon from the right, on the top of the editor pane.

You can change the viewing angle of your rendered 3D object by draging the mouse cursor around in the view pane.

Convert the 3D object in the view pane to an STL file by clicking on the STL icon, last icon on the right, on the top of the editor pane. Use the file browser that pops up to change the name of the STL file and to save it where you want it stored.

Close OpenSCAD, you are done. You can now load the STL file for your custom tablet holder into your favorite slicer, slice it with supports enabled and then send the result to your 3D printer.

>>>>>>> 73fa9447018c050ff702edab5d1021e03f4049a4
