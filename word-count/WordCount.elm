module WordCount exposing (wordCount)

import Dict exposing (Dict)


wordCount : String -> Dict String Int
wordCount sentence =
    sentence
        |> String.filter isNotPunctation
        |> String.toLower
        |> String.words
        |> List.foldl insertDict Dict.empty


insertDict : String -> Dict String Int -> Dict String Int
insertDict e d =
    Dict.update e (\_ -> Just (Maybe.withDefault 0 (Dict.get e d) + 1)) d


isNotPunctation : Char -> Bool
isNotPunctation char =
    not (List.member char [ ':', '!', '&', '@', '$', '%', '^', '&', ',' ])



{--
inspiration...
sanitize : String -> String
sanitize =
    Regex.replace Regex.All (Regex.regex "[^a-z0-9 ]") (\_ -> "")

or...
module WordCount exposing (..)

import Regex exposing (split, HowMany(..), regex)
import List exposing (filter, foldl)
import String exposing (isEmpty, toLower)
import Dict exposing (Dict(..), update, empty)

wordCount : String -> Dict String Int
wordCount =
  let 
    incCount = Maybe.withDefault(0) >> (+) 1 >> Just
  in 
    split All (regex "\\W") 
    >> filter (not << isEmpty)
    >> foldl (\s d -> update (toLower s) incCount d) empty



--}
