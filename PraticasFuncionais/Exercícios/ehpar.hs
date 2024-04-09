ehpar :: Int -> Bool
ehpar num =
    if mod num 2 == 0 then True
    else False

main :: IO()
main = do
    input <- getLine
    let num = ehpar (read input)
    print num
