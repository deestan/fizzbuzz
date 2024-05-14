char fizz,buzz[]="BuzzyFizz\0Buzz\0FizzBuzz\0";
main() {
    for (;fizz++<100;sprintf(buzz,"%d",fizz),puts(buzz+10*!(fizz%5)+5*!(fizz%3)));
}
