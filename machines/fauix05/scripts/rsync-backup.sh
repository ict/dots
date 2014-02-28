#!/bin/sh
cd
rsync -av --delete --exclude-from scripts/rsync-exclude.txt runtime-* lehre wemucs Bilder toybox i2s:backups &>>/tmp/rsyncbackup.log
