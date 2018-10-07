module Style exposing
    ( basicP
    , hfnss
    )

import Chadtech.Colors as Ct
import Css exposing (..)


basicP : Style
basicP =
    [ color Ct.content4
    , margin (px 0)
    , fontSmoothingNone
    , hfnss
    ]
        |> Css.batch


hfnss : Style
hfnss =
    [ fontFamilies [ "HFNSS" ]
    , fontSize (px 32)
    ]
        |> Css.batch


fontSmoothingNone : Style
fontSmoothingNone =
    property "-webkit-font-smoothing" "none"
