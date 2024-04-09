pares :: Int -> Int -> Int -> Int -> [(Int, Int)]
pares a b c d = [(x, y) | x <- [a..b], y <- [c..d]]

main :: IO()
main = do 
    input <- getLine
    input2 <- getLine
    input3 <- getLine
    input4 <- getLine
    let a = (read input)
        b = (read input2)
        c = (read input3)
        d = (read input4)
    print $ pares a b c d