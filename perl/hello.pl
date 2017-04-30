#!usr/bin/perl
my $a = 5;
my $b = 3;
my $c = 10;
my $d = 7;
{
open my $fh, '>', 'output.txt';
print {$fh} "Printing values from variables in program to this file";
print {$fh} $a . "\n";
print {$fh} $b . "\n";
print {$fh} $c . "\n";
print {$fh} $d . "\n";
}

{
open my $fh, '<', 'output.txt';
my ($ma, $mb, $mc) = <$fh>;
print $ma;
print $mb;
print $mc;
print $md;
close $fh;
}
