#!/bin/sh
for i in {0..19}
do
    bash ./child.sh $i 50000 &
done

wait