sublistas:: [Int] -> Int
sublistas [] = 0
sublistas [_] = 0
sublistas (h1:h2:t) =
    if h1 < h2
    then 1 + sublistas (h2:t)
    else 0 + sublistas (h2:t)


main:: IO()
main = do
    input <- getLine
    let lista = read input
    putStrLn(show (sublistas lista))