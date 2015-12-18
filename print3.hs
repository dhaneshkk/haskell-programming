module Print3 where

myGreeting::String

myGreeting = "hello" ++ " world!"


hello::String
hello = "hello"

world::String
world = "world"

helloworld::String
helloworld =  let k = concat["let",hello," ",world] 

main :: IO()
main = do
    putStrLn myGreeting
    putStrLn helloworld
    putStrLn secondGreeting
    where secondGreeting = concat [hello, " ",world]
