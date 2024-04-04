repetidor :: Int -> String -> IO()
repetidor num str = if num <= 1 then putStrLn str
                    else do 
                        putStrLn str
                        repetidor (num - 1) str

main :: IO()
main = do
    inputInt <- getLine
    inputStr <- getLine
    let num = (read inputInt)
        str = (read inputStr)

    repetidor num str

-- Apresenta algum erro