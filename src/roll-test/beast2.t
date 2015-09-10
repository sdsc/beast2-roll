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
  $output = `cd $TESTFILE.dir;. /etc/profile.d/modules.sh;module load beast2; beast /opt/beast2/2.3.0/examples/testHKY.xml 2>&1`;
  ok($output =~ /WilsonBalding\(wilsonBalding\)/, 'beast2 2.3.0 run');
  `rm -rf $TESTFILE.dir`;
  `mkdir -p $TESTFILE.dir`;
  $output = `cd $TESTFILE.dir;. /etc/profile.d/modules.sh;module load beast2/2.1.3; beast2 /opt/beast2/2.1.3/examples/testHKY.xml 2>&1`;
  ok($output =~ /beast.evolution.operators.WilsonBalding/, 'beast2 2.1.3 run');
  `/bin/ls /opt/modulefiles/applications/beast2/[0-9]* 2>&1`;
  ok($? == 0, 'beast2 module installed');
  `/bin/ls /opt/modulefiles/applications/beast2/.version.[0-9]* 2>&1`;
  ok($? == 0, 'beast2 version module installed');
  ok(-l '/opt/modulefiles/applications/beast2/.version',
     'beast2 version module link created');
}

`rm -fr $TESTFILE*`;
