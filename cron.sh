CURDIR=$(dirname $(type -p $0 | grep -oE '[^ ]+$' | head -1))

git pull > /dev/null
git diff HEAD~ --name-only

for file in $(ls); do
    if [[ $file == *.md ]]; then
        echo $file
        stripext=${tmp%.*}
        if [ ! -f $stripext.pdf ]; then
            notes file pdf
        fi
    fi
done


