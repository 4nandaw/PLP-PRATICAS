fibonacci:: [Integer]
fibonacci = 0 : 1 : zipWith (+) fibonacci (tail fibonacci)

soma:: Integer -> Integer
soma = sum . map (read . return) . show

fib:: Integer -> Integer
fib x = head $ filter (\a -> soma a == x) fibonacci


main:: IO()
main = do
    input <- getLine
    let somaTarget = read input
        resultado = fib somaTarget
    putStrLn(show resultado)
