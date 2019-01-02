module DifferenceOfSquares exposing (difference, squareOfSum, sumOfSquares)


squareOfSum : Int -> Int
squareOfSum n =
    let
        s =
            ((1 + n) * n) // 2
    in
    s * s


sumOfSquares : Int -> Int
sumOfSquares n =
    (n * (n + 1) * (2 * n + 1)) // 6


difference : Int -> Int
difference n =
    squareOfSum n - sumOfSquares n
