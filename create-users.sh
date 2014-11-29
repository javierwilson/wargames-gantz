#!/bin/bash
HOME=/wargame/home
for i in {0..9}; do
	useradd level${i} -d $HOME/level${i}
done
chmod -t /tmp
