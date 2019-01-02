module CollatzConjecture exposing (collatz)


makeSteps : Int -> Int -> ( Int, Int )
makeSteps value count =
    if value == 1 then
        ( value, count )

    else
        let
            rest =
                modBy 2 value
        in
        case rest of
            1 ->
                makeSteps (value * 3 + 1) (count + 1)

            _ ->
                makeSteps (value // 2) (count + 1)


collatz : Int -> Result String Int
collatz start =
    if start <= 0 then
        Err "Only positive numbers are allowed"

    else
        let
            ( _, count ) =
                makeSteps start 0
        in
        Ok count
