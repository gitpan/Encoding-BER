# -*- perl -*-

# Copyright (c) 2007 by Jeff Weisberg
# Author: Jeff Weisberg <jaw+pause @ tcp4me.com>
# Created: 2007-Feb-04 16:35 (EST)
# Function: DER
#
# $Id: DER.pm,v 1.4 2007/02/10 22:09:32 jaw Exp $

package Encoding::BER::DER;
use Encoding::BER;
our @ISA = qw(Encoding::BER);
use strict;

sub new {
    my $cl = shift;

    $cl->SUPER::new( @_, flavor => 'DER' );
}

=head1 NAME

Encoding::BER::DER - Perl module for encoding/decoding data using ASN.1 Distinguished Encoding Rules (DER)

=head1 SYNOPSIS

  use Encoding::BER::DER;
  my $enc = Encoding::BER::DER->new();
  my $der = $enc->encode( $data );
  my $xyz = $enc->decode( $der );

=head1 BUGS

Items with a length larger than can fit in 32 bits, will be encoded using
the indefinite form.
    
=head1 SEE ALSO

  Encoding::BER, Encoding::BER::CER

=head1 AUTHOR

Jeff Weisberg - http://www.tcp4me.com/

=cut
    ;


1;

