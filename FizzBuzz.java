class FizzBuzz {
    public static void main(String[] again) {
        var $ = new Exception().getStackTrace().length;
        java.util.regex.Pattern.compile("[.*]+|.*")
            .matcher(".*   .  * .   . *  .    ".split(" ")[$%15]+$).results()
            .map(java.util.regex.MatchResult::group)
            .map(x -> {
                if (x.lastIndexOf(x.charAt(0)) == 2) System.exit(0);
                return x.replace(".", "Fizz").replace("*", "Buzz");
            })
            .findAny().ifPresent(System.out::println);
        main(again);
    }
}
