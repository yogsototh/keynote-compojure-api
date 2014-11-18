sort :: (Ord a) => [a] -> [a]
sort [] = []
sort (x:xs) = sort (filter (<x) xs) ++
              [x] ++
              sort (filter (>=x) xs)
