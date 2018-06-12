
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
INCLUDE=$DIR/Modest/include/
TARGET=$DIR/../source/arrogant/c

# Generate bindings from headers with dpp: http://dpp.dub.pm
d++ --include-path $INCLUDE --preprocess-only modest.dpp

# Workaround for a dpp bug? 
sed -i 's/volatile//g' modest.d

# Generate d-style structs
rdmd generate_common.d 

mv common.d ../source/arrogant/c/common.d
echo 'module arrogant.c.modest;' > ../source/arrogant/c/modest.d
cat modest.d >> ../source/arrogant/c/modest.d

rm modest.d