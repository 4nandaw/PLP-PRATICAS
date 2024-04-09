listaQuadPares :: [Int]
listaQuadPares = [x^2 | x <- [1..20], even x]

listaQuadParesEntre :: Int -> Int -> [Int]
listaQuadParesEntre inicio fim = [x^2 | x <- [inicio..fim], even x]

main :: IO()
main = do
    putStrLn "Quadrados pares entre 1 e 20"
    print listaQuadPares

    putStrLn "Quadrados pares delimitados: "
    input <- getLine
    input2 <- getLine
    let inicio = (read input)
        fim = (read input2)
    putStrLn $ show $ listaQuadParesEntre inicio fim
