#!/bin/sh

version=8.6.5

while getopts v: name
do
	case $name in
	v)  version="$OPTARG"
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
