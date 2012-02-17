#!/bin/bash

# This script set the correct value for "installKBytes" in distribution.dist

MPKG=build/GPGMail.mpkg
BUNDLE=build/Release/GPGMail.mailbundle
IDENTIFIER=org.gpgtools.gpgmail.pkg

# Calculate size of $BUNDLE
SIZE=$(du -ks "$BUNDLE" | cut -f 1) || exit 1

sed -Ei '' 's/('"$IDENTIFIER"'.*installKBytes=")[0-9]*"/\1'"$SIZE"'"/' "$MPKG/Contents/distribution.dist" || exit 1