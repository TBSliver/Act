package Act::Constants;

use strict;
use warnings;

use Exporter qw/ import /;

my $CONSTANTS;

BEGIN {
  my $mp2 = ( exists $ENV{MOD_PERL_API_VERSION} and
                $ENV{MOD_PERL_API_VERSION} >= 2 );
  if ( $mp2 ) {
    require Apache2::Const;
  } else {
    require Apache::Constants;
  }
  $CONSTANTS = {
    MP2             => $mp2,
    OK              => $mp2 ? Apache2::Const::OK()                : Apache::Constants::OK(),
    DECLINED        => $mp2 ? Apache2::Const::DECLINED()          : Apache::Constants::DECLINED(),
    DONE            => $mp2 ? Apache2::Const::DONE()              : Apache::Constants::DONE(),
    NOT_FOUND       => $mp2 ? Apache2::Const::HTTP_NOT_FOUND()    : Apache::Constants::NOT_FOUND(),
    FORBIDDEN       => $mp2 ? Apache2::Const::FORBIDDEN()         : Apache::Constants::FORBIDDEN(),
    AUTH_REQUIRED   => $mp2 ? Apache2::Const::AUTH_REQUIRED()     : Apache::Constants::AUTH_REQUIRED(),
    SERVER_ERROR    => $mp2 ? Apache2::Const::SERVER_ERROR()      : Apache::Constants::SERVER_ERROR(),
    HTTP_NO_CONTENT => $mp2 ? Apache2::Const::HTTP_NO_CONTENT()   : Apache::Constants::HTTP_NO_CONTENT(),
    BAD_REQUEST     => $mp2 ? Apache2::Const::HTTP_BAD_REQUEST()  : Apache::Constants::BAD_REQUEST(),
    M_GET           => $mp2 ? Apache2::Const::M_GET()             : Apache::Constants::M_GET(),
    REDIRECT        => $mp2 ? Apache2::Const::REDIRECT()          : Apache::Constants::REDIRECT(),
  }
}

use constant $CONSTANTS;

our @EXPORT_OK = keys %$CONSTANTS;
our %EXPORT_TAGS = (
  # Apache::Constant compatibility
  'common' => [ qw/
    OK
    DECLINED
    DONE
    NOT_FOUND
    FORBIDDEN
    AUTH_REQUIRED
    SERVER_ERROR
  / ],
);

1;
