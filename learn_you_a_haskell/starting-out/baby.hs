doubleMe x = x * 2

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100 then x else doubleMe x


lostNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

fullList = [1, 2, 3, 4, 5] ++ [6, 7, 8, 9, 0]


firstName = "Braejan"
lastName = "Arias"

fullName = firstName ++ " " ++ lastName

helloWorld = ['H', 'e', 'l', 'l', 'o'] ++ [' '] ++ ['w', 'o', 'r', 'l', 'd']

smallCat = 'A': " small cat"

-- empty list
emptyList = []

--prepend values
--1:2:3:emptyList

lengthHelloWorld = length helloWorld
reverseHelloWorld = reverse helloWorld

justHello = take 5 helloWorld

justWorld = drop 6 helloWorld

minimumNumber = minimum fullList

maximumNumber = maximum fullList

sumFullList = sum fullList

productFullList = product fullList

existsHInList = 'H' `elem` helloWorld

alphaNumeric = ['A'..'Z'] ++ ['a' .. 'z'] ++ ['0'.. '9']


--justPairs [a] -> [b]
justPairs a = [x | x <- a, x `mod` 2 == 0]

notBanned xs = [x | x <- xs, x /= 1, x /= 3, x /= 9]

catsNames = ["Honey", "Arthur", "Kitty"]
catsSuffixNames = ["Maria", "Terribol", "M"]

allCombinations = [name ++ " " ++ suffix | name <- catsNames, suffix <- catsSuffixNames]

newLength xs = sum [1 | _ <- xs]

triangles = [(a, b, c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]
