module View.Input exposing (view)

import Chadtech.Colors as Ct
import Css exposing (..)
import Css.Animations as Animations
import Html.Styled as Html exposing (Attribute, Html, node)
import Html.Styled.Attributes as Attrs exposing (css)
import Style
import Style.Units as Units


view : List Style -> List (Attribute msg) -> Html msg
view styles attrs =
    Html.input
        (baseAttrs styles ++ attrs)
        []


inputStyle : Style
inputStyle =
    [ backgroundColor Ct.background2
    , Style.borderNone
    , outline none
    , boxSizing borderBox
    , height Units.size4
    , Style.hfnss
    , color Ct.content4
    , Style.fontSmoothingNone
    , width (pct 100)
    , padding2 zero Units.size2
    ]
        |> Css.batch


baseAttrs : List Style -> List (Attribute msg)
baseAttrs styles =
    [ css [ inputStyle, Css.batch styles ]
    , Attrs.spellcheck False
    ]
