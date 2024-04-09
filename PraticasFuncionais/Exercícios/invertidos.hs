invertidos :: IO()
invertidos = do
    num <- readLn::IO Int
    if num == -1 then putStrLn "Invertidos: "
    else do
        invertidos
        print num

main :: IO()
main = do
    invertidos