#!/usr/bin/env perl
# The above shebang is for "perlbrew", otherwise use /usr/bin/perl
#
# Please refer to the Plain Old Documentation (POD) at the end of this Perl Script for further information

# use strict;
# use warnings;
use XML::Simple

my $VERSION = "0.0.1"; # May be required to upload script to CPAN i.e. http://www.cpan.org/scripts/submitting.html

#!/usr/bin/perl

# use module
use XML::Simple;

# create object
$xml = new XML::Simple;

# read XML file
$shodan_xml = $xml->XMLin("shodan_data.xml");

open CSV, ">shodan_data.csv";

# access XML data
while ($total < $shodan_xml->{summary}->{total}) {
	# TODO Replace with Text::CSV::print
	print CSV "$shodan_xml->{host}->[$total]->{hostnames}";
	print CSV ",";
	print CSV "$shodan_xml->{host}->[$total]->{ip}";
	print CSV "\n";
	$total++;	
}

close CSV;

=head1 NAME

shodan-xml_to_csv.pl - "Shodan XML to CSV"

=head1 VERSION

This documentation refers to shodan-xml_to_csv.pl Alpha v$VERSION

=head1 CONFIGURATION

=head1 USAGE

shodan-xml_to_csv.pl

=head1 REQUIRED ARGUEMENTS
 				
=head1 OPTIONAL ARGUEMENTS

=head1 DESCRIPTION

Converts the XML exported from http://www.shodanhq.com/data i.e. shodan_data.xml into CSV i.e. shodan_data.csv

=head1 DEPENDENCIES

=head1 PREREQUISITES

=head1 COREQUISITES

=head1 OSNAMES

osx

=head1 SCRIPT CATEGORIES

Web

=head1 INCOMPATIBILITIES

=head1 BUGS AND LIMITATIONS

Please refer to the comments beginning with "TODO" in the Perl Code.

=head1 AUTHOR

Christian Heinrich

=head1 CONTACT INFORMATION

http://cmlh.id.au/contact

=head1 MAILING LIST

=head1 REPOSITORY

https://github.com/cmlh/shodan

=head1 FURTHER INFORMATION AND UPDATES

http://cmlh.id.au/tagged/shodan
http://del.icio.us/cmlh/shodan

=head1 LICENSE AND COPYRIGHT

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License. 

Copyright 2012 Christian Heinrich
