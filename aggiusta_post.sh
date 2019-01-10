#
# for n in *.md; do sed '/^tags/s/\[\(.*\)\]/\1/' $n>temp.dat; mv temp.dat $n; done
#
# for n in *.md; do sed '/^title/s/\"\(.*\)\"/\1/' $n>temp.dat; mv temp.dat $n; done
#
# for n in *.md; do sed '/^---/d' $n>temp.dat; mv temp.dat $n; done
# for n in *.md; do sed '/^layout/d' $n>temp.dat; mv -f temp.dat $n; done
#
#
for n in *.md
do
    sed -e '/^tags/s/\[\(.*\)\]/\1/' -e '/^title/s/\"\(.*\)\"/\1/' -e '/^---/d'  -e '/^description/d'  -e '/^category/d' -e '/^layout/d' $n>temp.dat
    mv temp.dat $n
done
