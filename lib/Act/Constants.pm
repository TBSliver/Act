package Act::Constants;

use strict;
use warnings;

use Exporter qw/ import /;

use Apache::Constants ();

my $CONSTANTS;

BEGIN {
  $CONSTANTS = {
    OK              => Apache::Constants::OK(),
    DECLINED        => Apache::Constants::DECLINED(),
    DONE            => Apache::Constants::DONE(),
    NOT_FOUND       => Apache::Constants::NOT_FOUND(),
    FORBIDDEN       => Apache::Constants::FORBIDDEN(),
    AUTH_REQUIRED   => Apache::Constants::AUTH_REQUIRED(),
    SERVER_ERROR    => Apache::Constants::SERVER_ERROR(),
    HTTP_NO_CONTENT => Apache::Constants::HTTP_NO_CONTENT(),
    BAD_REQUEST     => Apache::Constants::BAD_REQUEST(),
    M_GET           => Apache::Constants::M_GET(),
    REDIRECT        => Apache::Constants::REDIRECT(),
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
