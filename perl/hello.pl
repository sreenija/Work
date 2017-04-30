#!usr/bin/perl
my $a = 5;
my $b = 3;
my $c = 10;
my $d = 7;
{
open my $fh, '>', 'output.txt';
print {$fh} $a . "\n";
print {$fh} $b . "\n";
print {$fh} $c . "\n";
print {$fh} $d . "\n";
}

{
open my $fh, '<', 'output.txt';
my ($a, $b, $c, $d) = <$fh>;
print $a;
print $b;
print $c;
print $d;
close $fh;
}
