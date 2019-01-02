module Hamming exposing (distance)


distance : String -> String -> Result String Int
distance left right =
    if String.length left == String.length right then
        List.map2 (\x y -> ( x, y )) (String.toList left) (String.toList right)
            |> List.filter (\x -> not (Tuple.first x == Tuple.second x))
            |> List.length
            |> Ok

    else
        Err "left and right strands must be of equal length"
