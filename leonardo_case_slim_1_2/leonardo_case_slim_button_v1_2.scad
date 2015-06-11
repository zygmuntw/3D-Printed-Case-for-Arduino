//  ----------------------------------------------------------------------- LICENSE
//  This "3D Printed Case for Arduino Uno, Leonardo" by Zygmunt Wojcik is licensed
//  under the Creative Commons Attribution-ShareAlike 3.0 Unported License.
//  To view a copy of this license, visit
//  http://creativecommons.org/licenses/by-sa/3.0/
//  or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.


include <leonardo_case_slim_param_v1_2.scad>

//------------------------------------------------------------------------- PARAMETERS
// button dimensions
buttonSize = 4;
buttonBaseHeight = 2;
buttonBaseR = buttonSize/2 + 0.25 + layerWidth*3;


//------------------------------------------------------------------------- MODULES
module button() {
	union() {									// add
		cylinder(h=buttonBaseHeight, r=buttonBaseR);
		cylinder(h=height - floorHeight - pcbPositionZ - pcbHeight - 3, r=buttonSize/2);		
		translate([0, 0, height - floorHeight - pcbPositionZ - pcbHeight - 3])
		resize(newsize=[buttonSize+0.02, buttonSize+0.02, (buttonSize/3) *2])
		sphere(buttonSize/2);
	}
}


//------------------------------------------------------------------------- MAIN BLOCK
button();
