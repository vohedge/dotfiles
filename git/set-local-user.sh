#!/usr/bin/env bash

echo "This script set local git user account."
echo ""

read -p "User email: " user_email
read -p "User name: " user_name
read -p "Are you sure to set email/name to local repository?  (y/N)" check
case "$check" in [yY]*) ;; *) echo "abort." ; exit ;; esac
git config --global user.email "${user_email}"
git config --global user.name "${user_name}"

echo ""
echo "---"
echo "results:"
git config --list | grep user
echo "---"
