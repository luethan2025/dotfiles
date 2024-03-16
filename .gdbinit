set auto-load safe-path / # current directory initialization
set language auto
set disassembly-flavor intel # Intel syntax

set history save on # command-line history
set history size 256

set print address on # show memory address of pointers
set print symbol-filename on # show source file name

set print frame-arguments value # show all frame arguments
set print entry-values both # show current parameter value and its value from function entry point

set print pretty on # pretty print structures
set print max-depth 2 # set maximum depth of nested structures to 2

set print repeats 2 # set number of consecutive elements to 2
set print elements 100 # set number of printed elements to 100
set print array on # pretty print arrays

set print frame-info auto

set logging enabled on # enable logging
set logging file gdb.txt # set logfile file name
set logging redirect off # output to terminal and logfile
set logging debugredirect off # output debug output to terminald and logfile
set logging overwrite off # append to logfile

set pagination off # set height limit to unlimited
set confirm off # turn off confirmation requests
