import Data.Maybe
fizz = [Nothing, Nothing, Just "fizz"] ++ fizz
buzz = [Nothing, Nothing, Nothing, Nothing, Just "buzz"] ++ buzz
calc x = if (length x) > 1 then (drop 1 x) else x
fizzbuzz = map (concat . calc . catMaybes . (\(a, b, c) -> [a, b, c])) $ zip3 (map (Just . show) [1..]) fizz buzz
main = mapM_ putStrLn $ take 100 fizzbuzz
