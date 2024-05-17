fizz = []:[]:["fizz"]:fizz
buzz = []:[]:[]:[]:["buzz"]:buzz
calc c@(x:xs) = drop (signum . length $ xs) c
fizzbuzz = map (concat . calc . (\(a, b, c) -> a ++ b ++ c)) $ zip3 (map (return . show) [1..]) fizz buzz
main = mapM_ putStrLn $ take 100 fizzbuzz
