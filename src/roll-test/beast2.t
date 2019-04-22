#!/usr/bin/perl -w
# beast2 roll installation test.  Usage:
# beast2.t [nodetype]
#   where nodetype is one of "Compute", "Dbnode", "Frontend" or "Login"
#   if not specified, the test assumes either Compute or Frontend

use Test::More qw(no_plan);

my $appliance = $#ARGV >= 0 ? $ARGV[0] :
                -d '/export/rocks/install' ? 'Frontend' : 'Compute';
my $installedOnAppliancesPattern = '.';
my $isInstalled = -d '/opt/beast2';
my $output;

my $TESTFILE = 'tmpbeast2';

# beast2-install.xml
if($appliance =~ /$installedOnAppliancesPattern/) {
  ok($isInstalled, 'beast2 installed');
} else {
  ok(! $isInstalled, 'beast2 not installed');
}
SKIP: {

  `mkdir -p $TESTFILE.dir`;
  skip 'beast2 not installed', 4 if ! $isInstalled;
  $output = `cd $TESTFILE.dir;module load beast2; beast2 /opt/beast2/2.5.2/examples/testHKY.xml 2>&1`;
  ok($output =~ /End likelihood:/, 'beast2 2.5.2 run');
  `/bin/ls /opt/modulefiles/applications/beast2/[0-9]* 2>&1`;
  ok($? == 0, 'beast2 module installed');
  `/bin/ls /opt/modulefiles/applications/beast2/.version.[0-9]* 2>&1`;
  ok($? == 0, 'beast2 version module installed');
  ok(-l '/opt/modulefiles/applications/beast2/.version',
     'beast2 version module link created');
}

`rm -fr $TESTFILE*`;
