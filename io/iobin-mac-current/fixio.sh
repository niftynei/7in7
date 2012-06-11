#!/bin/bash

IO=`which io`
IOSTATIC=`which io_static`
NEWIO="$IO-orig"
NEWIOSTATIC="$IOSTATIC-orig"


echo "Fixing Io binary architecture..."
echo "  Moving original binaries..."
echo "    moving $IO to $NEWIO"
mv $IO $NEWIO
echo "    moving $IOSTATIC to $NEWIOSTATIC"
mv $IOSTATIC $NEWIOSTATIC
echo "  Making wrapper scripts..."
echo "arch -i386 $NEWIO" > $IO
echo "arch -i386 $NEWIOSTATIC" > $IOSTATIC
echo "  Changing permissions (setting executable)..."
chmod +x $IO
chmod +x $IOSTATIC

echo "...done!"
