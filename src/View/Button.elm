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
    , backgroundColor Ct.content3
    , Style.border Ct.content3
    , cursor default
    , color Ct.content4
    ]
        |> Css.batch


primary : Style
primary =
    [ basic
    , backgroundColor Ct.content4
    , Style.border Ct.content4
    , color Ct.content1
    , hover
        [ backgroundColor Ct.content5
        , Style.border Ct.content5
        ]
    , active
        [ backgroundColor Ct.content5
        , Style.border Ct.content5
        ]
    ]
        |> Css.batch


secondary : Style
secondary =
    [ basic
    , backgroundColor Ct.content3
    , Style.border Ct.content3
    , color Ct.content5
    , hover
        [ backgroundColor Ct.content4
        , Style.border Ct.content4
        ]
    , active
        [ backgroundColor Ct.content5
        , Style.border Ct.content5
        ]
    ]
        |> Css.batch


basic : Style
basic =
    [ color Ct.content5
    , Style.hfnss
    , Style.fontSmoothingNone
    , outline none
    , minWidth Units.size7
    , height Units.size5
    , lineHeight Units.size5
    , boxSizing borderBox
    , padding2 zero Units.size3
    , cursor pointer
    ]
        |> Css.batch
