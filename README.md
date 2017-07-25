# timewarp
system wide time stomper written in bash

Timewarp is meant to reset the modified/accessed dates on ever file in a linux filesystem to the oldest date discovered on the system.
This script can easily be modified to traverse different directories, or take take a custom date as an argument.
This is a proof of concept. In a functional environment, it would drastically slow down a forsensics audit. 
Timewarp is for research purposes only. Use at your own risk. I hold no liability to what you do with this, or what happens to your system.
