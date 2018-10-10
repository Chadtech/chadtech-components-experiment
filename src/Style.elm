module Style exposing
    ( border
    , borderNone
    , center
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
            [ color Ct.content4
            , margin (px 0)
            , fontSmoothingNone
            , hfnss
            ]
        ]


borderNone : Style
borderNone =
    property "border" "none"


indent : Style
indent =
    border Ct.content0


outdent : Style
outdent =
    border Ct.content4


border : Color -> Style
border =
    border3 Units.size0 solid


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
