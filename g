#!/bin/sh

usage() {
cat <<EOF
g [-v GHCVERSION] [-h] CMD...

Runs the given command with the given GHC version set as prefix of PATH.
Expects ghc to be installed in $HOME/opt/ghc-$GHCVERSION.

-v GHCVERSION	specify the GHC version (default: 8.6.5)
-h				print this help
EOF
exit 1
}

version=8.6.5

while getopts v: name
do
	case $name in
	v)  version="$OPTARG" ;;
	?)  usage ;;
	esac
done
shift $(($OPTIND -1))

printf 'running `%s` within ghc-%s\n' "$*" "$version"

ghcpath="$OPT/ghc-$version"

if ! [ -d "$ghcpath" ]
then
	printf '%s not present' "$ghcpath"
fi

env PATH="$ghcpath/bin:$PATH" "$@"
