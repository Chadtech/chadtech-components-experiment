module View.Spinner exposing (view)

import Chadtech.Colors as Ct
import Css exposing (..)
import Css.Animations as Animations
import Html.Styled as Html exposing (Html, node)
import Html.Styled.Attributes as Attrs exposing (css)
import Style
import Style.Units as Units


view : Html msg
view =
    Html.div
        [ css [ containerStyle ] ]
        [ Html.node "spinner"
            [ css [ spinnerStyle ] ]
            []
        ]


spinnerStyle : Style
spinnerStyle =
    [ property "animation" "slideby 1s infinite"
    , property "animation-timeing-function" "linear"
    , [ ( 0, [ Animations.property "left" "-75px" ] )
      , ( 1, [ Animations.property "left" "125px" ] )
      ]
        |> Animations.keyframes
        |> animationName
    , width Units.size6
    , height Units.size4
    , top (px 0)
    , position absolute
    , backgroundColor Ct.content4
    ]
        |> Css.batch


containerStyle : Style
containerStyle =
    [ position relative
    , backgroundColor Ct.background2
    , height Units.size4
    , overflow hidden
    , width Units.size7
    , margin auto
    , Style.border Ct.content1
    ]
        |> Css.batch
