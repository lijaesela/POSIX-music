#!/bin/sh
. ./base.sh

bpm=140
timesig="5/4"
calcscale=64
notecmd="aplay"
notesdir="xylo/D"

init_rhythm
init_pitch

bass1 ()
{
	#echo 1
	pr $note5 $dottedquarter
	pr $note12 $quarter
	pr $note17 $eighth
	pr $note3 $quarter
	pr $note3 $quarter
	#echo 2
	pr $note5 $dottedquarter
	pr $note12 $quarter
	pr $note17 $eighth
	pr $note10 $quarter
	pr $note10 $quarter
}

bass1alt1 ()
{
	#echo 1
	pr $note1 $dottedquarter
	pr $note8 $quarter
	pr $note13 $eighth
	pr $note3 $quarter
	pr $note3 $quarter
	#echo 2
	pr $note1 $dottedquarter
	pr $note8 $quarter
	pr $note13 $eighth
	pr $note16 $quarter
	pr $note16 $quarter
}

melody1 ()
{
	#echo 1
	pr $note32 $sixteenth
	pr $note29 $sixteenth
	pr $note24 $sixteenth
	pr $note32 $sixteenth
	pr $note29 $sixteenth
	pr $note24 $sixteenth
	pr $note32 $sixteenth
	pr $note29 $sixteenth
	pr $note24 $sixteenth
	pr $note32 $sixteenth
	pr $note29 $sixteenth
	pr $note24 $sixteenth
	pr "$note31 $note27 $note22" $quartertriplet
	pr "$note31 $note27 $note22" $quartertriplet
	pr "$note31 $note27 $note22" $quartertriplet
	#echo 1
	pr $note32 $sixteenth
	pr $note29 $sixteenth
	pr $note24 $sixteenth
	pr $note32 $sixteenth
	pr $note29 $sixteenth
	pr $note24 $sixteenth
	pr $note32 $sixteenth
	pr $note29 $sixteenth
	pr $note24 $sixteenth
	pr $note32 $sixteenth
	pr $note29 $sixteenth
	pr $note24 $sixteenth
	pr "$note34 $note31 $note25" $quartertriplet
	pr "$note34 $note31 $note25" $quartertriplet
	pr "$note34 $note31 $note25" $quartertriplet
}

melody1alt1 ()
{
	#echo 1
	pr $note32 $sixteenth
	pr $note29 $sixteenth
	pr $note24 $sixteenth
	pr $note32 $sixteenth
	pr $note29 $sixteenth
	pr $note24 $sixteenth
	pr $note32 $sixteenth
	pr $note29 $sixteenth
	pr $note24 $sixteenth
	pr $note32 $sixteenth
	pr $note29 $sixteenth
	pr $note24 $sixteenth
	pr "$note31 $note27 $note22" $quartertriplet
	pr "$note34 $note31 $note27" $quartertriplet
	pr "$note39 $note34 $note31" $quartertriplet
	#echo 1
	pr $note32 $sixteenth
	pr $note29 $sixteenth
	pr $note24 $sixteenth
	pr $note32 $sixteenth
	pr $note29 $sixteenth
	pr $note24 $sixteenth
	pr $note32 $sixteenth
	pr $note29 $sixteenth
	pr $note24 $sixteenth
	pr $note32 $sixteenth
	pr $note29 $sixteenth
	pr $note24 $sixteenth
	pr "$note37 $note34 $note31" $quartertriplet
	pr "$note34 $note31 $note28" $quartertriplet
	pr "$note31 $note28 $note25" $quartertriplet
}

### arrangement ###

echo 1
bass1 &
melody1
echo 2
bass1 &
melody1
echo 3
bass1alt1 &
melody1
echo 4
bass1 &
melody1alt1
echo done
