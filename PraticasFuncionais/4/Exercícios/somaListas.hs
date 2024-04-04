somaListas :: [Int] -> Int
somaListas [] = 0
somaListas (h:t) = h + somaListas t

main :: IO()
main = do
    putStrLn "[1, 2, 3, 4]"
    putStrLn $ show $ somaListas [1, 2, 3, 4]

    putStrLn "[10, 20, 30, 40]"
    putStrLn $ show $ somaListas [10, 20, 30, 40]