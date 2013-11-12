#!/bin/sh
# for n in *.md
# do
# 	rm -f temp.dat
#     echo "==> processing" $n
# 	sed '/^Tags/s/\(: \)\([a-z, ]*\)/: [\2]/' $n |
# 	awk '(NR==2) { print "layout: post" } 1' |
# 	sed '/---/{G;s/$/{% include JB\/setup %} /;}' |
# 	sed '2d' > temp.dat
# 	mv temp.dat $n
# done


for n in *.md; do sed 's/{% include JB\/setup %}//' $n>temp.dat; mv -f temp.dat $n; done


