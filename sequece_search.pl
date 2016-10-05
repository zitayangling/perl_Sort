use strict;

my @array = qw/1 2 3 4 5 6 7 8 9 0/;
my $index = 0;
my $num = &seqsearch("0");
print $num;

sub seqsearch {
	my $data = shift;
	if ($index == $#array && $array[$index] != $data) {
		return -1;
	}
	if ($array[$index] == $data) 
	{
		return $index+1;
	}else
	{
		$index++;
		&seqsearch($data);
	}
}
