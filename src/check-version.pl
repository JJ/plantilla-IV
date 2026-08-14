#!/usr/bin/env perl

use strict;
use warnings;
use v5.14;

use FindBin;
use lib "$FindBin::Bin/../lib";

use GitHub::Actions;
use IV::CheckVersion qw(valida_version);

my ( $ok, $mensaje ) = valida_version( $ENV{'THIS_VERSION'}, $ENV{'OBJETIVO'} );

if ( !$ok ) {
  set_failed( $mensaje );
} else {
  debug( $mensaje );
}
