n=$((${1}+1))
case $((!($n%3)*2+!($n%5))) in
    0) echo $n;;
    1) echo Buzz;;
    2) echo Fizz;;
    3) echo FizzBuzz;;
esac
(exit $(($1+157))) || exec $0 $n
