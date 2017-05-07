# -*- mode: cperl; -*-

# Base tests for base85

# Copyright (c) 2017 Timothe Litt
#
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
#
# Terms of the Perl programming language system itself
#
# a) the GNU General Public License as published by the Free
#   Software Foundation; either version 1, or (at your option) any
#   later version, or
# b) the "Artistic License"
#
# See LICENSE for details.
#
use strict;
use warnings;

use Test::More 0.94;
use Test::Files;

use File::Basename;
use File::Spec;

plan  tests => 9;

ok( chdir( dirname( $0 ) ), "Change directory" );

my $curdir  = File::Spec->curdir;
my $filej   = File::Spec->catfile( $curdir, 'testimage.jpg' );
my $file8   = File::Spec->catfile( $curdir, 'testimage.b85' );
my $file8C  = File::Spec->catfile( $curdir, 'testimageC.b85' );
my $filet   = File::Spec->catfile( File::Spec->tmpdir, 'base85.tmp' );
my $base85  = File::Spec->catfile( File::Spec->curdir,
                                   File::Spec->updir, 'bin', 'base85' );

# Verify that uncompressed encoding/decoding works
ok( system( "$base85 $filej -o $filet -C" ) == 0, "Encoding succeeds" )
  or diag( "exit status = $?\n" );
compare_ok( $file8C, $filet , "Encoding produces correct data" );
unlink( $filet );

ok( system( "$base85 $file8C --decode -o $filet" ) == 0, "Decoding succeeds" )
  or diag( "exit status = $?\n" );
compare_ok( $filej, $filet, "Decoding produces correct data" );
unlink( $filet );

# Verify that compression (which doesn't have a large effect on this data)
# also works.

ok( system( "$base85 $filej --output=$filet" ) == 0,
    "Encoding with compression succeeds" ) or diag( "exit status = $?\n" );
compare_ok( $file8, $filet,
            "Encoding with compression produces correct data" );
unlink( $filet );

ok( system( "$base85 $file8 --decode --output $filet" ) == 0,
    "Decoding succeeds" ) or diag( "exit status = $?\n" );
compare_ok( $filej, $filet, "Decoding produces correct data" );
unlink( $filet );


1;

