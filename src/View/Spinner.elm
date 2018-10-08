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
    [ property "animation-duration" "675ms"
    , property "animation-iteration-count" "infinite"
    , property "animation-timing-function" "linear"
    , [ ( 0, [ Animations.property "left" "-75px" ] )
      , ( 100, [ Animations.property "left" "125px" ] )
      ]
        |> Animations.keyframes
        |> animationName
    , width Units.size6
    , height Units.size4
    , top (px 0)
    , position absolute
    , backgroundColor Ct.content3
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
    , boxSizing borderBox
    ]
        |> Css.batch
