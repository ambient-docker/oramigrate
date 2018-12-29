#! /bin/env perl

use strict;
use DBI;
use DBD::Pg;

my $machine = 'postgresql-11';
my $port    = 5432;
my $dbname = 'public';
my $user = 'postgres';
my$pass = 'password';

my $dbh = DBI->connect("dbi:Pg://dbname=$dbname;host=$host;port=$port", $user, $pass) ||  die "Failed to connect: $DBI::errstr\n";
