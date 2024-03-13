relatorio:: [Int] -> String
relatorio mensuracoes = do
    let limite = length (filter (\x -> x <= 80) mensuracoes)
        tolerancia = length (filter (\x -> x > 80 && x <= 88) mensuracoes)
        multa = length (filter (\x -> x > 88) mensuracoes)
    unlines [show limite ++ " limite", show tolerancia ++ " tolerancia", show multa ++ " multa"]


main:: IO()
main = do
    input <- getLine
    let mensuracoes = read input
        resultado = relatorio mensuracoes
    putStrLn "=== Relatorio ==="
    putStrLn(resultado)
