#String to Array
S="I love China"
A=($S)
echo convert string to ${A[0]} ${A[1]} ${A[2]}
#Array to String
AS=${A[@]}
echo convert array ${A[0]} ${A[1]} ${A[2]} to string $AS 
