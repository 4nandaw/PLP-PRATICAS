sublistas:: [Int] -> Int
sublistas [] = 0
sublistas [_] = 0
sublistas lista
    | (head lista) > (head (tail lista)) = 1 + sublistas (tail lista)
    | otherwise = 0 + sublistas (tail lista)


  
main:: IO()
main = do
    input <- getLine
    let lista = read input
    putStrLn(show (sublistas lista))