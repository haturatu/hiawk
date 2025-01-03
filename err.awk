#!/usr/bin/awk -f

# Usage
##############
# $ ./err.awk a
# $ echo $?
# $ ./err.awk 1
# $ echo $?

BEGIN {
  stderr = "/dev/stderr"
  if (ARGV[1] ~ /[A-Za-z]/) {
    print "Error:", "i don't understand it eng" > stderr
    exit -1
  }
}
