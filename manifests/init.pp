# == Class: openssl
#
# Install OpenSSL from brew
#
class openssl (
) {
  package { 'openssl': }
  -> exec { 'brew link --force openssl':
    provider => 'shell',
    unless   => 'test -f $(brew --prefix)/bin/openssl'
  }
}
