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
  add_to_job_summary( "# ❌ $ENV{'THIS_VERSION'} es incorrecta\n\n⚠ $mensaje" );
} else {
  debug( $mensaje );
  add_to_job_summary( "# ✅ $ENV{'THIS_VERSION'}" );
}

if ( qv( $ENV{'THIS_VERSION'} ) > qv($ENV{'OLD_VERSION'} ) ) {
  add_to_job_summary( "# ✅ Versión incrementada correctamente" );
} else {
  set_failed( "# ❌ $ENV{'OLD_VERSION'} no es menor que $ENV{'THIS_VERSION'}" );
  add_to_job_summary( "# ❌ $ENV{'THIS_VERSION'} " );
}
