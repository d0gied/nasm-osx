# usage

if [ $# -lt 1 ]; then
    echo "Usage: $0 <target>"
    exit 1
fi
echo "Building $1..."

# target
target=$1

# remove extension
target="${target%.*}"

# build
nasm -f elf32 $1 -o "${target}.o"

# link
gcc -no-pie -g -w "${target}.o" macro.c -o "${target}"

# clean
rm -f "${target}.o"

# remove ./ if exists from beginning of
target=$(echo "${target}" | sed 's/^\.\///')
echo "Done. Run with ./${target}"