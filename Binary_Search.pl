use strict;
my @array = qw/1 2 3 4 5 6 7 8 9 0/;
&binSearch(5,$#array);

sub binSearch 
{
	my ($data,$n) = @_;
	my $left = 0;
	my $right = $n;
	my $num = 0;
	while ($left < $right) 
	{
		$num++;
		my $middle = ($left+$right)/2;
		if ($data > $array[$middle]) 
		{  
			$left = $middle+1;
		}
		elsif ($data < $array[$middle])
		{
			$right = $middle-1;
		}
		else
		{
			last;
		}
	}
	print "查找次数:$num\n";
}
	