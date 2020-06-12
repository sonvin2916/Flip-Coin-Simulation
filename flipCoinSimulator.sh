#! /bin/bash
head=0
tail=0
first=0
last=1
diff=$(( last-first+1 ))
while [[ $tail -lt 21 || $head -lt 21 ]]
do

                flip=$(( first + $(( $RANDOM%diff )) ))
                if [ $flip -eq 1 ]
                then

                        ((head++))
                        echo "head" $head
                else

                        ((tail++))
                        echo "tail" $tail
                fi
if [ $head -eq 21 ]
then
        echo "Head wins 21 times"
exit
elif [ $tail -eq 21 ]
then
        echo "Tail wins 21 times"
exit
fi
done
