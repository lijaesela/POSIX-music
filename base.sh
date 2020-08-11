#!/bin/bash

### defaults ###

[ -z $bpm ] && bpm=140
[ -z $timesig ] && timesig="4/4"
[ -z $calcscale ] && calcscale=4
[ -z $notesdir ] && notesdir="xylo/A"
[ -z $notecmd ] && notecmd="play"

### time ###

init_rhythm ()
{
	# computing quarter note
	quarter=`echo "scale=$calcscale;1/$bpm*60" | bc`
	# computing other notes in terms of quarter
	eighth=`echo "scale=$calcscale;$quarter/2" | bc`
	sixteenth=`echo "scale=$calcscale;$quarter/4" | bc`
	half=`echo "scale=$calcscale;$quarter*2" | bc`
	whole=`echo "scale=$calcscale;$quarter*4" | bc`
	# dotted notes
	dottedquarter=`echo "scale=$calcscale;$quarter+$eighth" | bc`
	dottedeighth=`echo "scale=$calcscale;$eighth+$sixteenth" | bc`
	dottedhalf=`echo "scale=$calcscale;$half+$quarter" | bc`
}

### note files ###

init_pitch ()
{
	i=1
	while [ $i -lt $(expr $(ls $notesdir | wc -l) + 1) ]; do
		# this script can't be posix because of this one fucking line
		printf -v note$i $notesdir/$i.wav
		i=`expr $i + 1`
	done
}

### helpful functions and aliases ###

# play one or more notes without output to the screen
p ()
{
	for i in $@
	do
		$notecmd $i &> /dev/null &
	done
}

# alias for sleep
r ()
{
	sleep $@
}

# play notes and rest
pr ()
{
	for i in $1
	do
		$notecmd $i &> /dev/null &
	done
	sleep $2
}

# rest for an amount of measures
measure ()
{
	[ $# -ne 1 ] && echo "measure: error" && exit 1

	case ${timesig##*/} in
		4)
			unit=$quarter
			;;
		8)
			unit=$eighth
			;;
		16)
			unit=$sixteenth
			;;
		*)
			echo "measure: timesig denominator error"
			exit 1
			;;
	esac

	i=0
	while [ $i -lt $(expr $1 \* ${timesig%%/*}) ]; do
		sleep $unit
		i=`expr $i + 1`
	done
}