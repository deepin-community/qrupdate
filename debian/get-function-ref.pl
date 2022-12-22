#!/usr/bin/perl

while(<STDIN>)
{    
    if(/^\s*subroutine\s*(.*)/)
    {
	$subname = "$1\n";
	$line = <STDIN>;
	$line = <STDIN> if ($line =~ /^\s*$/);
	$doctext="";
 	while($line =~ /^c(.*)/ )
 	{
	    $doctext .= "\t$1\n";
	    $line = <STDIN>;
 	}
	print $subname;
	print $doctext;
    }
}

