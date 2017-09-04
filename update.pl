#!/usr/bin/perl
#open(DATAFILE, "> touch") or die("error :$!");
system("git add .");
system('git commit -m "commit from perl"');
system('git push');


