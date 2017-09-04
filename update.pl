#!/usr/bin/perl

system("git add .");
system('git commit -m "'.@ARGV.'"');
system('git push');


