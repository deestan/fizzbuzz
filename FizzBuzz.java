class FizzBuzz {
    public static void main(String[] again) {
        var $ = new Exception().getStackTrace().length;
        java.util.regex.Pattern.compile("[^T]*")
            .matcher(String.format("FizzTheFizzBuzzTo%sTown",$).substring("HRRARLARRALRARR".charAt($%15)-'A'))
            .results().findAny().map(java.util.regex.MatchResult::group).ifPresent(System.out::println);
        java.util.Optional.of($).map(x->x-100).filter(Integer.valueOf(0)::equals).ifPresent(System::exit);
        main(again);
    }
}
