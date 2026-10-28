#!/usr/bin/perl -i -p
unless (/^\s*\$\$\s*$/) {
    s/\$\$(.+?)\$\$/\$$1\$/g;
}
