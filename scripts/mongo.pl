#!/usr/bin/env perl
use strict;
use warnings;
use MongoDB;
use Data::Dumper;

my $client = MongoDB->connect("mongodb://192.168.1.19");
my $db = $client->get_database("db_monta");
my $criadores = $db->get_collection( 'criadores' );
my $docs = ($criadores->find());

while (my $doc = $docs->next) {
	#print("\n");print Dumper(%temp);print("\n");
   #print Dumper($doc) . "\n";
   print $doc->{'_id'}."\n";
}