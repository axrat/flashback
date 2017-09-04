#!/usr/bin/perl

binmode STDOUT;
while ( <@ARGV> ) {
    open my $fh, '<', $_ or die "Couldn't open $_: $!";
    binmode $fh;
    print while <$fh>;
    close $fh;
}
