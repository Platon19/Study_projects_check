#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Assembling lab_num_1
/Library/Developer/CommandLineTools/usr/bin/clang -x assembler -c -target x86_64-apple-macosx10.8.0 -o '/Applications/Lazarus/Лабы ВУЗ/lib/x86_64-darwin/LAB_NUM_1.o'  -x assembler '/Applications/Lazarus/Лабы ВУЗ/lib/x86_64-darwin/LAB_NUM_1.s'
if [ $? != 0 ]; then DoExitAsm lab_num_1; fi
rm '/Applications/Lazarus/Лабы ВУЗ/lib/x86_64-darwin/LAB_NUM_1.s'
echo Linking /Applications/Lazarus/Лабы ВУЗ/LAB_NUM_1
OFS=$IFS
IFS="
"
/Library/Developer/CommandLineTools/usr/bin/ld           -multiply_defined suppress -L. -o '/Applications/Lazarus/Лабы ВУЗ/LAB_NUM_1' `cat '/Applications/Lazarus/Лабы ВУЗ/link25153.res'` -filelist '/Applications/Lazarus/Лабы ВУЗ/linkfiles25153.res'
if [ $? != 0 ]; then DoExitLink /Applications/Lazarus/Лабы ВУЗ/LAB_NUM_1; fi
IFS=$OFS
