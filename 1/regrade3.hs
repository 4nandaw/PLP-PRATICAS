regraDeTres:: Float -> Float -> Float -> Float
regraDeTres a b c = (b * c) / a

main:: IO()
main = do
    putStrLn "entrada:"
    
    inputA <- getLine
    let a = (read inputA)
    
    inputB <- getLine
    let b = read inputB
    
    inputC <- getLine
    let c = read inputC
    
    putStrLn "saída:"
    
    let resultado = regraDeTres a b c
    putStrLn $ "O valor de x é: " ++ show resultado
