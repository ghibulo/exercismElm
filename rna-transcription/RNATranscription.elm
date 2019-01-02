module RNATranscription exposing (toRNA)


toRNA : String -> Result Char String
toRNA dna =
    Ok
        (String.map
            (\c ->
                case c of
                    'G' ->
                        'C'

                    'C' ->
                        'G'

                    'T' ->
                        'A'

                    'A' ->
                        'U'

                    _ ->
                        'x'
            )
            dna
        )
