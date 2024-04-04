-- PROVA/LEITE

-- QUESTÃO 3
a :: [Int]
a = [56, 63..98]

b :: [Int] 
b = [x^2 | x <- [10..50], odd x]

c :: [(Int, Int)]
c = [(x,y) | x <- [0,5..25], y <- [2, 1]]

d :: [Int]
d = [x + y | x <- [0,6..20], y <- [0,2,3,4], x + y < 20]

e :: [[Int]]
e = [[x] | x <- [1..5]]

-- QUESTÃO 4
contador :: Int -> [Int] -> Int
contador _ [] = 0
contador elem (h:t)
    | (h == elem) = 1 + (contador elem t)
    | otherwise = contador elem t

ocorrencias :: [Int] -> [Int]
ocorrencias lista = [contador x lista | x <- lista]

-- QUESTÃO DE MERGE
mergeListasOrdenadas :: [Int] -> [Int] -> [Int]
mergeListasOrdenadas [] ys = ys
mergeListasOrdenadas xs [] = xs
mergeListasOrdenadas (x:xs) (y:ys)
    | x < y = x : mergeListasOrdenadas xs (y:ys)
    |otherwise = y : mergeListasOrdenadas (x:xs) ys

-- QUESTÃO DE VERIFICAR SE UMA LINGUAGEM EH VÁLIDA PELA QNTDD DE () E []
contadorLP :: Char -> String -> Int
contadorLP elem [] = 0
contadorLP elem (h:t)
    | elem == h = 1 + contadorLP elem t
    | otherwise = contadorLP elem t

verificaLP :: String -> Bool
verificaLP lista = if contadorLP "(" lista == contadorLP ")" lista && contadorLP "{" lista == contadorLP "}" lista then True
                    else False
-- Algo nesse estilo eu acho, desliguei o cérebro fui de dormes


main :: IO()
main = do
    putStrLn $ "===== QUESTÃO 3" ++ "\n"
    putStrLn $ "a)" ++ show a
    putStrLn ""
    putStrLn $ "b)" ++ show b
    putStrLn ""
    putStrLn $ "c)" ++ show c
    putStrLn ""
    putStrLn $ "d)" ++ show d
    putStrLn ""
    putStrLn $ "e)" ++ show e