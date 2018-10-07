module Style exposing
    ( center
    , fontSmoothingNone
    , globalStyles
    , hfnss
    , indent
    , outdent
    )

import Chadtech.Colors as Ct
import Css exposing (..)
import Css.Global exposing (global)
import Html.Styled as Html exposing (Html)
import Style.Units as Units


globalStyles : Html msg
globalStyles =
    global
        [ Css.Global.p
            [ color Ct.content5
            , margin (px 0)
            , fontSmoothingNone
            , hfnss
            ]
        ]


indent : Style
indent =
    border3 Units.size0 solid Ct.content1


outdent : Style
outdent =
    border3 Units.size0 solid Ct.content5


hfnss : Style
hfnss =
    [ fontFamilies [ "HFNSS" ]
    , fontSize (px 32)
    ]
        |> Css.batch


fontSmoothingNone : Style
fontSmoothingNone =
    property "-webkit-font-smoothing" "none"


center : Style
center =
    margin2 zero auto
