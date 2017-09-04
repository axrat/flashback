#!/usr/bin/perl

($mday,$mon,$year) = (localtime(time))[3..5];
$year += 1900;
$mon += 1;
print "$year/$mon/$mday\n";

#open(DATAFILE, "> touch") or die("error :$!");

system("git add .");
system('git commit -m "commit from perl"');
system('git push');


