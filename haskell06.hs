--1
ends :: [Int] -> [Int]
ends [] = []
ends x = head x : last x : []

--2
deduzame :: [Integer] -> [Integer]
deduzame [] = []
deduzame (x:xs) = 2*x : deduzame xs 

--3
deduzame2 :: [Integer] -> [Integer]
deduzame2 [] = []
deduzame2 (x:xs) = if x > 2 then  x : deduzame2 xs else deduzame2 xs 

--4
geraTabela :: Int -> [(Int,Int)]
geraTabela 0 = []
geraTabela x = (x,(x^2)) : geraTabela (x-1)

--5
contido :: Char -> [Char] -> Bool
contido y (x:xs) = if y == x then True else if xs == []then False else contido y xs

--6
translate :: [(Float,Float)] -> [(Float,Float)]
translate [] = []
translate (x:xs) = (fst x+2, snd x+2) : translate xs

--7
countLongs :: [String] -> Int
countLongs [] = 0
countLongs x= if length (head x) >= 5 then 1 + countLongs (tail x) else countLongs (tail x)

--8
onlyLongs :: [String] -> [String]
onlyLongs [] = []
onlyLongs (x:xs) = if length x >= 5 then x : onlyLongs xs else onlyLongs xs