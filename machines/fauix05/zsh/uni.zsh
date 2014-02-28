alias win='rdesktop -u keller -a 16 -k en-gb -g 1913x1118 -d INFORMATIK-2 -r disk:LOCAL=/home/demian faui20m'
alias simit="rdesktop -u heinz -K -a 16 -k en-gb -g 1913x1130 -r disk:LOCAL=/home/demian 131.188.65.150"
alias sleuth='java -cp "/home/demian/workspace/HeapSleuth/bin:/home/demian/workspace/HeapSleuth/deps/*" sleuth.Sleuth'

function audpoints()
{
	for f in *.java;
	do
		echo $f:
		#grep --color=no -P --only-matching '(?<=//)[[:digit:]]?(\.[[:digit:]])?(?=P)' "$f" | paste -sd+ - | bc
		grep --color=no -P --only-matching '(?<=//)[[:digit:]]*(\.[[:digit:]])?(?=[pP])' "$f" | paste -sd+ - | bc
	done
}
