#!/usr/bin/env perl

sub create_zip() {
    if ( -e outline.zip || ! -e solid.zip) {
    mkdir dist 
    my $res = qx{zip outline.zip ./outline};
    print $res;
    my $ores = qx/zip dist\/solid.zip .\/solid\//;
    print $ores;
    }
    
    create_zip();
