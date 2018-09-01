#!/bin/sh
# Manifest Reader

# Regular Expression
R_ENTITIES="s_(\s*\#[^$]*)__g"
# remove comments from the manifest
T_MANIFEST_NOCOMMENTS=$(cat $1 | sed -E "$R_ENTITIES")
# return space-delimited list of entities
echo $T_MANIFEST_NOCOMMENTS