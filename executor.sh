#!/bin/sh
# Manifest Executor

#	Takes a manifest file ($1) and a script/executable ($2) and performs $2 on each entity in $1
#	@todo: look in manifest for @command:"..." and use the contents of the parentheses to execute automatically
#	@todo: allow @command notation to specify argument position within command, a la -I{} ... {} with xargs
#	@todo: option -p => parallel, i.e. make each execution call and send it to background & continue on (xargs?)
#	@todo: visual display of progress through the manifest

MANIF_READER="./reader.sh"

ENTITIES=$($MANIF_READER $1)
shift
VERB=$@

for ENTITY in $ENTITIES; do
	$VERB $ENTITY
done

# alternate version:
#	xargs -n1 $VERB