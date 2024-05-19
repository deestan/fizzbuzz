using System.Linq;

class FizzBuzz : System.Exception
{
    static void Main(string[] args)
    {
        throw new FizzBuzz(99, "FizzBallons");
    }

    static FizzBuzz()
    {
        foreach (var fuzz in Bizz)
            System.Console.WriteLine(fuzz);
        System.Environment.Exit(Buzzles);
    }

    FizzBuzz(int erval, string word)
    {
        for (Fizzles = erval - 1; Fizzles < Bizz.Length; Fizzles += erval)
            Bizz[Fizzles] = System.Text.RegularExpressions.Regex.Replace(Bizz[Fizzles] + word, "\\d+", "");
        Next = (erval + 2) % 7;
    }

    static int Fuzz = 'g';
    static string[] Bizz = Enumerable.ToArray<string>(Enumerable.Range(1, 100).Select(i => (Fizzles * Fuzz-- + i).ToString()));
    static int Fizzles = new FizzBuzz(Fuzz, "Fizz").Next;
    static int Buzzles = new FizzBuzz(Fizzles, "Buzz").Next;
    int Next;
}
