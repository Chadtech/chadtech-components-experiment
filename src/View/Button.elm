module View.Button exposing
    ( basic
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


basic : Style
basic =
    [ color Ct.content5
    , Style.hfnss
    , Style.fontSmoothingNone
    , outline none
    , minWidth Units.size7
    , minHeight Units.size5
    , lineHeight Units.size5
    , backgroundColor Ct.content2
    , Style.indent
    , boxSizing borderBox
    , padding2 zero Units.size3
    ]
        |> Css.batch
