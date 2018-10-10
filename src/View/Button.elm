module View.Button exposing
    ( disabled
    , margins
    , primary
    , secondary
    , view
    )

import Chadtech.Colors as Ct
import Css exposing (..)
import Html.Styled as Html
    exposing
        ( Attribute
        , Html
        )
import Style
import Style.Units as Units


view : List (Attribute msg) -> String -> Html msg
view attrs label =
    Html.button
        attrs
        [ Html.text label ]


margins : Style
margins =
    margin2 zero Units.size1


disabled : Style
disabled =
    [ basic
    , cursor default
    , backgroundColor Ct.content2
    , Style.borderNone
    , color Ct.content3
    ]
        |> Css.batch


primary : Style
primary =
    [ basic
    , color Ct.content4
    , backgroundColor Ct.content3
    , Style.borderNone
    , color Ct.content5
    , hover [ backgroundColor Ct.content4 ]
    , active [ backgroundColor Ct.content5 ]
    ]
        |> Css.batch


secondary : Style
secondary =
    [ basic
    , backgroundColor Ct.content2
    , Style.borderNone
    , color Ct.content4
    , hover
        [ backgroundColor Ct.content3
        , color Ct.content5
        ]
    , active
        [ backgroundColor Ct.content4
        , color Ct.content5
        ]
    ]
        |> Css.batch


basic : Style
basic =
    [ Style.hfnss
    , Style.fontSmoothingNone
    , outline none
    , minWidth Units.size7
    , height Units.size4
    , boxSizing borderBox
    , padding2 zero Units.size3
    , cursor pointer
    ]
        |> Css.batch
