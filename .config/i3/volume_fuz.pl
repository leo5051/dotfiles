#!/usr/bin/perl

use strict;
use warnings;
use utf8;
use open ':std', ':utf8';
no if $] >= 5.017011, warnings => 'experimental::smartmatch';

my %LEVEL = (
	"" => [0..33],
	"" => [34..66],
	"" => [67..100],
);

while (<>) {
	chomp;
	if (/^(\d+)/) {
		for my $key (keys %LEVEL) {
			if ($1 ~~ $LEVEL{$key}) {
				print "$key $_\n";
				last;
			}
		}
	}
}
