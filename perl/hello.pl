#!usr/bin/perl
my $a = 5;
my $b = 3;
my $c = 10;
{
open my $fh, '>', 'output.txt';
print {$fh} "Printing values from variables in program to this file";
print {$fh} $a . "\n";
print {$fh} $b . "\n";
print {$fh} $c . "\n";
}

{
open my $fh, '<', 'output.txt';
my ($a, $b, $c) = <$fh>;
print $a;
print $b;
print $c;
close $fh;
}
