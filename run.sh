#!/bin/bash

set -e

## My blender path for OSX
blender="/Applications/Blender/blender.app/Contents/MacOS/blender"
base_mesh_name="$1"

here=$(pwd)
base="$here/$base_mesh_name"
export_base="$here/export.py"
generate="$here/generate.py"

res_folder="$here/res/"

if [ ! -d "$res_folder" ]; then
  mkdir $res_folder
fi

if [ ! -f "$base" ]; then
  echo "no such file: $base";
  exit 1;
fi

"$blender" "$base" -b -P "$generate"

