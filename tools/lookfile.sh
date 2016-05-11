#/bin/sh
string=filenametags
echo -e "!_TAG_FILE_SORTED\t2\t/2=foldcase/" > $string

find . -regex '.*\.\(c\|C\|h\|H\|cpp\|hpp\|cxx\|hxx\|sh\|xml\|inl\)' ! \( -path "*svn*" -o -path "*repo*" -o -path "*git*" \) -type f -printf "%f\t%p\t1\n" | sort -f >> $string

pwd=`pwd`
sed -i  "s+\.\/+$pwd\/+g" $string