print "\n\nWelcome\n";


print "Set the game parameters.\n ";

$boolean = 1;

while ($boolean == 1) #this loop determines how many problems
{
print "	How many problems?\n
	\t 1. 20, or\n
	\t 2. 100?\n ";
$chooseGame = <STDIN>;
if ($chooseGame == 1) {$choice = 20; $boolean ++;} 
elsif ($chooseGame == 2) {$choice = 100; $boolean ++;}
else {print "\nThat's not a choice!\n";}
}

while ($boolean == 2) #this loop; how many digits
{
print "	\t 1. Two Digit, or\n
	\t 2. Three?\n ";
$chooseGame = <STDIN>;
if ($chooseGame == 1) {$size = 100; $boolean ++;} 
elsif ($chooseGame == 2) {$size = 1000; $boolean ++;}
else {print "\nThat's not a choice!\n";}
}

while ($boolean == 3) #and this loop; to add or subtract
{
print "	\t 1. Addition, \n
	\t 2. Subtraction, or\n
	\t 3. Multiplication?\n";
$chooseGame = <STDIN>;
if ($chooseGame == 1) {$sign = 1; $boolean ++;} 
elsif ($chooseGame == 2) {$sign = 2; $boolean ++;}
elsif ($chooseGame == 3) {$sign = 3; $boolean ++;}
else {print "\nThat's not a choice!\n";}
}

$correct = 0;

while ($counter < $choice)
{
$number = int $size*rand;
$number2 = int $size*rand;

if ($sign == 1)
{
	print "$number + $number2\n";
	$guess = <STDIN>;
	$answer = $number + $number2;
}

elsif ($sign == 2)
{
	if ($number >= $number2)
	{
	print "$number - $number2\n";
	$guess = <STDIN>;
	$answer = $number - $number2;
	}

	elsif ($number < $number2)	
	{
	print "$number2 - $number\n";
	$guess = <STDIN>;
	$answer = $number2 - $number;
	}
}

elsif ($sign == 3)
{
	print "$number x $number2\n";
	$guess = <STDIN>;
	$answer = $number * $number2;
}

if ($answer == $guess) {print "Correct!\n\n"; $correct++}
else {print "Wrong! $answer\n\n";}
$counter++;
}

print "\nyou got $correct out of $choice\n\n";
