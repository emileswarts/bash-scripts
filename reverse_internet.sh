#!/bin/bash
for d in $( seq 1 254 ) ; do for c in $( seq 1 254) ; do for b in $( seq 1 254 ) do for a in {1..4} {1..6} {11..13} {15..22} {24..30} {32..35} 38 40 41 {43..48} {50..61} {62..99} {107..109} {128..175} 178 180 182 184 {186..222} ;  do echo -n "$a.$b.$c.$d " | tee -a $a ; RESULT=$( dig+short -x $a.$b.$c.$d ) echo $RESULT |tee -a $a ; done ; done ; done ; done ;
