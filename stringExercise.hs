module StringExercise where

addBang::String->String
addBang xs = let s = xs++"!" in s

getStringFromNthChar::String->Int->String
getStringFromNthChar x n =   let k = drop n x in k 

getNthChar::String->Int->String
getNthChar xs n = let k = drop n xs  in (head k):[]

rvrs::[Char] -> [Char]
rvrs [] = []
rvrs (x:xs) = rvrs xs ++ [x] 

main::IO()
main = do
    putStrLn $ addBang "Curry is awesome"
    putStrLn $ getNthChar "Curry is awesome!" 4
    putStrLn $ getStringFromNthChar "Curry is awesome!" 9
    putStrLn $ rvrs "JaiBhairavi"
----let k = ("Curry is awesome"++"!")!!4  in print k
--let k = "Curry is awesome"++"!"  in print k
