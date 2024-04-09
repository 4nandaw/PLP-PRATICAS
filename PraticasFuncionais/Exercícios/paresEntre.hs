ehpar :: Int -> Bool
ehpar num = mod num 2 == 0

paresEntre:: Int -> Int -> String
paresEntre inicio fim = if inicio > fim then ""
                    else if ehpar inicio then show (inicio) ++ " " ++ paresEntre (inicio + 1) fim
                    else paresEntre (inicio + 1) fim

main :: IO()
main = do
    input <- getLine
    input2 <- getLine
    let inicio = (read input)
        fim = (read input2)
    
    putStrLn $ paresEntre inicio fim