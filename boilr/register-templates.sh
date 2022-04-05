#!/usr/bin/env bash

for dir in templates/*/ ; do
  template_name=$(basename $dir)
  echo "$dir $template_name"
  boilr template save -f $dir $template_name
done
