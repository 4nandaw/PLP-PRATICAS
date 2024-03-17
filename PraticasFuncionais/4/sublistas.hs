countSublists :: [Int] -> Int
countSublists [] = 0
countSublists list = sublistsAux list 0 0

sublistsAux :: [Int] -> Int -> Int -> Int
sublistsAux [] _ count = count
sublistsAux [x] len count = if len > 0 then count + 1 else count
sublistsAux (x:y:xs) len count
    | y > x = sublistsAux (y:xs) (len + 1) count
    | len > 0 = sublistsAux (y:xs) 0 (count + 1)
    | otherwise = sublistsAux (y:xs) 0 count
   
  
main:: IO()
main = do
    input <- getLine
    let list = map read (words input) :: [Int]
    let result = countSublists list
    print(result)