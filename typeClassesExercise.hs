module TypeClassesExercise where

 addStuff::Integer->Integer->Integer
 addStuff a b = a+b+5

 funcIgnoresArgs::a->a->a->String
 funcIgnoresArgs x y z = "Blah"

 
 nonsense::Bool->Integer
 nonsense True = 1
 nonsense False = 2

 typicalCurriedFunction :: Integer->Bool->Integer
 typicalCurriedFunction i b = i + (nonsense b)

 anonymous:: Integer->Bool->Integer
 anonymous=\i b _> i + (nonsense b)

 anonymousAndManuallyNested:: Integer->Bool->Integer
 anonymousAndManuallyNested= \i _> \b _> i +(nonsense b)

