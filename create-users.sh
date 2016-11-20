#!/bin/bash
HOME=/wargame/home
BIN=/wargame/bin
for i in {0..9}; do
    id=$((2000+$i))
    nexti=$(($i+1))
	groupadd level${i} --gid $id
	useradd level${i} -d $HOME/level${i} --uid $id --gid $id
    rsync -av home/level${i}/ $HOME/level${i}/
    chown -R level${i}:level${i} $HOME/level${i}/
    chmod -R o-r $HOME/level${i}/
    chown level${nexti}:level${nexti} $BIN/tmpserver${i}
    chown level${nexti}:level${nexti} $BIN/tmpserver${i}.c
    chown level${nexti}:level${nexti} $BIN/tmpserver${i}.sh
    chmod +s $BIN/tmpserver${i}
done
chmod -t /tmp
