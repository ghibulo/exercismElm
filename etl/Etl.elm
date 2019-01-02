module Etl exposing (transform)

--module Etl exposing (d, d2, d3, d4, transform)

import Dict exposing (Dict)


transform : Dict Int (List String) -> Dict String Int
transform input =
    input
        |> Dict.map (\k v -> List.map (\e -> ( String.toLower e, k )) v)
        |> Dict.values
        |> List.foldl List.append []
        |> Dict.fromList



{--

d =
    Dict.fromList [ ( 1, [ "A", "E" ] ), ( 2, [ "D", "G" ] ) ]


d2 =
    Dict.map (\k v -> List.map (\e -> ( e, k )) v) d


d3 =
    Dict.values d2


d4 =
    List.foldl List.append [] d3

--}
