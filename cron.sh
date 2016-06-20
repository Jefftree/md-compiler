CURDIR=$(dirname $(type -p $0 | grep -oE '[^ ]+$' | head -1))

for file in $(ls $CURDIR/*.md); do
    notes file pdf
done

