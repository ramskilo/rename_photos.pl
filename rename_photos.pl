#!/bin/perl
#Rename recovered .jpg files with creation date 
#exiftool -h * |grep Creation may function with png files

$working_dir = '.';
$jhead_bin = '/usr/bin/jhead';
@recovered_files = `ls $working_dir`;
foreach $file (@recovered_files) {
        chomp $file;
#        print "File___: $file    || ";
#	print "PATH___: $working_dir/$file\n";
        @exif = `$jhead_bin -v $working_dir/$file`;        
	foreach $line (@exif) { 
		if ($line =~ m/Date\/Time    : / or $line =~ m/DateTimeDigitized = "/) {
	#	if ($line =~ m/DateTimeDigitized = "/) {
	 		print "line: $line";
                	print "Trovato: $'";
			$nome = $';
			$nome =~ s/ /_/;
			$nome =~ s/\n//;
			$nome =~ s/://g;

			$nome =~ s/"//g; #removes "

                        system("mv $working_dir/$file $working_dir/IMG_$nome.JPG");
                        print "IMG_$nome.JPG from $file\n";
                        last;
                }
        }
}
