#!/bin/bash
. ./base.sh

bpm=100
timesig="4/4"
calcscale=8

init_rhythm
init_pitch

echo "Starting!"

I ()
{
	pr "$note1 $note5 $note8 $note12" "$dottedeighth"
	pr "$note1 $note5 $note8 $note12" "$dottedeighth"
	pr "$note1 $note5 $note8 $note12" "$dottedeighth"
	pr "$note1 $note5 $note8 $note12" "$dottedeighth"
	pr "$note1 $note5 $note8 $note12" "$eighth"
	pr "$note1 $note5 $note8 $note12" "$eighth"
}
ii ()
{
	pr "$note3 $note6 $note10 $note13" "$dottedeighth"
	pr "$note3 $note6 $note10 $note13" "$dottedeighth"
	pr "$note3 $note6 $note10 $note13" "$dottedeighth"
	pr "$note3 $note6 $note10 $note13" "$dottedeighth"
	pr "$note3 $note6 $note10 $note13" "$eighth"
	pr "$note3 $note6 $note10 $note13" "$eighth"
}

#
I &
#
pr $note15 $eighth
pr $note17 $eighth

pr $note20 $eighth
pr $note24 $eighth

r $eighth
pr $note24 $eighth

pr $note20 $eighth
pr $note17 $eighth

#
I &
#
pr $note15 $eighth
pr $note17 $eighth

pr $note20 $eighth
pr $note24 $eighth

r $eighth
pr $note24 $eighth

pr $note20 $eighth
pr $note17 $eighth

#
ii &
#
pr $note17 $eighth
pr $note18 $eighth

pr $note22 $eighth
pr $note25 $eighth

r $quarter

r $quarter

#
ii &
#
pr $note17 $eighth
pr $note18 $eighth

pr $note22 $eighth
pr $note25 $eighth

r $eighth
pr $note29 $eighth

r $quarter

#
p $note1
