#!/bin/sh

export VAR=$(date +"%d-%m-%Y-%H-%M-%S")
mkdir -p /dest/data-backup
7z  a -t7z -mx9 /dest/data-backup/backup-$VAR /src/*

