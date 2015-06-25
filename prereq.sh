#!/bin/bash
# Install everything needed to run these on a Mac
echo "Looking for prerequisites..."
rc=0
echo -n "Algol 68 Genie: "
if ! type -p a68g; then echo "NOT FOUND"; rc=1; fi
echo -n "GNAT: "
if ! type -p gnat; then echo "NOT FOUND"; rc=1; fi
echo -n "GNU Common Lisp: "
if ! type -p clisp; then echo "NOT FOUND"; rc=1; fi
echo -n "GNU COBOL: "
if ! type -p cobc; then echo "NOT FOUND"; rc=1; fi
echo -n "GNU Fortran: "
if ! type -p gfortran; then echo "NOT FOUND"; rc=1; fi
echo -n "Berkeley Logo: "
if ! type -p logo; then "NOT FOUND"; rc=1; fi
echo -n "Free Pascal Compiler: "
if ! type -p logo; then "NOT FOUND"; rc=1; fi
if (( ! rc )); then
  echo "All prereqs found. Good to go!"
  touch prereq-ok
else
  echo "Some prereqs missing!"
  rm -f prereq-ok
fi
exit $rc
