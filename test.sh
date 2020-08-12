#!/bin/bash --posix

# source "base.sh" to import all of the tools we need
. ./base.sh

# set BPM and time signature
bpm=100
timesig="4/4"
# set "calscale", the decimal place that bc will round to.
# higher numbers will give more accurate rhythms.
calcscale=8

# call this function to set all of the "note" variables
init_pitch
# call this one to set all of the time variables
init_rhythm

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

# tempo change!
bpm=140
init_rhythm

echo "Getting faster!"

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

echo "Done."
