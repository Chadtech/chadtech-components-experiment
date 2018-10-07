module Style.Units exposing
    ( size0
    , size1
    , size10
    , size2
    , size3
    , size4
    , size5
    , size6
    , size7
    , size8
    , size9
    )

import Css exposing (..)


{-| 3
-}
size0 : Px
size0 =
    px smallFactor


{-| 5
-}
size1 : Px
size1 =
    px bigFactor


{-| 9
-}
size2 : Px
size2 =
    px (smallFactor * smallFactor)


{-| 15
-}
size3 : Px
size3 =
    px (smallFactor * bigFactor)


{-| 25
-}
size4 : Px
size4 =
    px (bigFactor * bigFactor)


{-| 45
-}
size5 : Px
size5 =
    px (smallFactor * smallFactor * bigFactor)


{-| 75
-}
size6 : Px
size6 =
    px (smallFactor * bigFactor * bigFactor)


{-| 125
-}
size7 : Px
size7 =
    px (bigFactor * bigFactor * bigFactor)


{-| 225
-}
size8 : Px
size8 =
    [ bigFactor
    , bigFactor
    , smallFactor
    , smallFactor
    ]
        |> List.product
        |> px


{-| 375
-}
size9 : Px
size9 =
    [ bigFactor
    , bigFactor
    , bigFactor
    , smallFactor
    ]
        |> List.product
        |> px


{-| 625
-}
size10 : Px
size10 =
    [ bigFactor
    , bigFactor
    , bigFactor
    , bigFactor
    ]
        |> List.product
        |> px



-- {-}
-- INTERNALS --


smallFactor : Float
smallFactor =
    3


bigFactor : Float
bigFactor =
    5
