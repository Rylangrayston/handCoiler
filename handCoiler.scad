//3

//3.75

//1.5 tall

fn = 50;

diskOD = 200;
diskCenterHoleID = 10;
diskCenterNotCutOD = 30;

numberOfPegs = 10;

pegThreadOD = 10;
pegShaftOD = 5;


module cutSlots()
{

for (i = [0:360/(numberOfPegs):360])
	{
	echo(i);
	rotate([0,0,i])
	translate([diskCenterNotCutOD,-pegThreadOD/2,0])
 		square([diskOD,pegThreadOD]);
	} 
}
#cutSlots();


module disk()
{
circle(diskOD/2, $fn = fn);
}

disk();