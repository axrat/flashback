#!/usr/bin/perl
#use strict;
#use warnings;
#open(DATAFILE, "> touch") or die("error :$!");

my $docs = "docs/";
my $rawgit = "http://rawgit.com/onoie/flashback/master/".$docs;
my $changelog = "CHANGELOG";
my $img = $ARGV[0];
if ( ! -e $img) {
    print "ng\n";
	exit
}
print "ok\n";

$mvresult = system("mv ".$img." ".$docs);
print "mvresult:".$mvresult."\n";

($mday,$mon,$year) = (localtime(time))[3..5];
$year += 1900;
$mon += 1;

my $timestamp = "$year/$mon/$mday";

open(FH,">> ".$changelog);
print FH "###### ".$timestamp."\n";
print FH "![".$timestamp."](".$rawgit.$img.")\n";
close(FH);

$mergeresult = system("./merge.pl README CHANGELOG > README.md");
print "mergeresult:".$mergeresult."\n";

