module View.Card exposing
    ( body
    , extraLarge
    , extraSmall
    , header
    , large
    , medium
    , small
    , view
    )

import Chadtech.Colors as Ct
import Css exposing (..)
import Css.Global as Global
import Html.Grid as Grid
import Html.Styled as Html exposing (Html, node)
import Html.Styled.Attributes as Attrs exposing (css)
import Style
import Style.Units as Units


view : List Style -> List (Html msg) -> Html msg
view styles =
    Html.node "card"
        [ css [ Css.batch styles, containerStyle ] ]


containerStyle : Style
containerStyle =
    [ Style.outdent
    , backgroundColor Ct.content4
    , boxSizing borderBox
    , displayFlex
    , flexDirection column
    ]
        |> Css.batch


type alias HeaderModel =
    { title : String }


header : HeaderModel -> Html msg
header model =
    Grid.row
        []
        [ Grid.column
            [ padding Units.size1
            , displayFlex
            ]
            [ Html.node "card-header"
                [ css [ headerStyle ] ]
                [ Html.p
                    [ css [ headerTextStyle ] ]
                    [ Html.text model.title ]
                ]
            ]
        ]


headerCloseButton : Html msg
headerCloseButton =
    Html.button
        [ css [ headerCloseButtonStyle ] ]
        [ Html.text "x" ]


headerCloseButtonStyle : Style
headerCloseButtonStyle =
    [ position absolute
    , width Units.size4
    , height Units.size4
    , padding zero
    , paddingBottom (px 2)
    , Style.indent
    , backgroundColor Ct.content3
    , active [ backgroundColor Ct.content1 ]
    , boxSizing borderBox
    , lineHeight (px 14)
    ]
        |> Css.batch


headerTextStyle : Style
headerTextStyle =
    [ color Ct.content1
    , lineHeight Units.size4
    , textAlign center
    ]
        |> Css.batch


headerStyle : Style
headerStyle =
    [ height Units.size4
    , flex (int 1)
    , position relative
    ]
        |> Css.batch


body : List (Html msg) -> Html msg
body children =
    Grid.row
        [ flex (int 1) ]
        [ Grid.column
            [ padding Units.size1 ]
            [ Html.node "card-body"
                [ css [ bodyStyle ] ]
                children
            ]
        ]


bodyStyle : Style
bodyStyle =
    [ Style.indent
    , boxSizing borderBox
    , backgroundColor Ct.content2
    , flex (int 1)
    , padding Units.size1
    ]
        |> Css.batch


extraSmall : Style
extraSmall =
    [ width Units.size8
    , height Units.size6
    ]
        |> Css.batch


small : Style
small =
    [ width Units.size9
    , height Units.size7
    ]
        |> Css.batch


medium : Style
medium =
    [ width Units.size9
    , height Units.size8
    ]
        |> Css.batch


large : Style
large =
    [ width Units.size10
    , height Units.size9
    ]
        |> Css.batch


extraLarge : Style
extraLarge =
    [ width Units.size10
    , height Units.size10
    ]
        |> Css.batch
