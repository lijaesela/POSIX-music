# POSIX-music
POSIX-music is a bash script and example sound files for arranging music with shell scripts.  
This script is nearly completely POSIX-compliant.  _nearly._  If it weren't for one line.  

## Dependencies
You will need ``bc`` for calculating note lengths.  
Finally, you will need some kind of command to play sound files.  By default, ``play`` from the package ``sox`` will be used.  
If you run Arch, these can simply be installed with:
```shell
pacman -S bc sox
```  

## Getting Started
A basic song script will look like this.  
```shell
#!/bin/bash
. ./base.sh

bpm=100
timesig="4/4"

init_pitch
init_rhythm

pr $note1 $quarter
pr $note5 $quarter
pr $note8 $quarter
pr $note13 $quarter
```  
This will play a major arpeggio made of 4 quarter notes in 4/4.  
Quotes can be put around notes and lengths for multiple values at once.  
```shell
pr "$note1 $note5 $note8 $note12" "$quarter $quarter"
```  
The above line will play a major seventh chord that lasts for 2 quarter notes.  
You could simply use a half note, but this is for didactic purposes.  
