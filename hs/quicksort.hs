q :: (Ord a) => [a] -> [a]
q [] =[]
q (x:xs) = let smallOrEqual = filter (<=x) xs --[a | a<- xs, a <=x]
               larger = filter (>x) xs --[a | a<- xs, a>x] 
               in q smallOrEqual ++ [x] ++ q larger

--https://stackoverflow.com/questions/39122970/haskell-error-parse-error-on-input			   
--为什么不能用tab?