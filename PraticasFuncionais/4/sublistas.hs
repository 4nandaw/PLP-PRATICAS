countSublists :: [Int] -> Int
countSublists [] = 0
countSublists xs = sublistsAux xs 0 0

sublistsAux :: [Int] -> Int -> Int -> Int
sublistsAux [] _ count = count
sublistsAux [x] _ count = count + 1
sublistsAux (x:y:xs) len count
    | y > x     = sublistsAux (y:xs) (len + 1) count
    | len > 0   = sublistsAux (y:xs) 0 (count + 1)
    | otherwise = sublistsAux (y:xs) 0 count


main:: IO()
main = do
    input <- getLine
    let lista = read input
    putStrLn(show (countSublists lista))