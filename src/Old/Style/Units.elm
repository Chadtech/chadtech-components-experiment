module Old.Style.Units exposing
    ( size0
    , size1
    , size10
    , size11
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


{-| 2
-}
size0 : Px
size0 =
    px smallFactor


{-| 4
-}
size1 : Px
size1 =
    px bigFactor


{-| 8
-}
size2 : Px
size2 =
    px (bigFactor * smallFactor)


{-| 16
-}
size3 : Px
size3 =
    px (bigFactor * bigFactor)


{-| 32
-}
size4 : Px
size4 =
    px (smallFactor * bigFactor * bigFactor)



-- px (smallFactor * smallFactor * smallFactor)


{-| 64
-}
size5 : Px
size5 =
    px (bigFactor * bigFactor * bigFactor)


{-| 128
-}
size6 : Px
size6 =
    px (smallFactor * bigFactor * bigFactor * bigFactor)


{-| 256
-}
size7 : Px
size7 =
    px (bigFactor * bigFactor * bigFactor * bigFactor)


{-| 384
-}
size8 : Px
size8 =
    [ bigFactor
    , bigFactor
    , bigFactor
    , bigFactor
    ]
        |> List.product
        |> (+) (smallFactor * bigFactor * bigFactor * bigFactor)
        |> px


{-| 512
-}
size9 : Px
size9 =
    [ bigFactor
    , bigFactor
    , bigFactor
    , bigFactor
    , smallFactor
    ]
        |> List.product
        |> px


{-| 578
-}
size10 : Px
size10 =
    [ bigFactor
    , bigFactor
    , bigFactor
    , bigFactor
    , smallFactor
    ]
        |> List.product
        |> (+) (bigFactor * bigFactor * bigFactor)
        |> px


{-| 1500
-}
size11 : Px
size11 =
    [ bigFactor
    , bigFactor
    , bigFactor
    , bigFactor
    , smallFactor
    ]
        |> List.product
        |> px



-- INTERNALS --


smallFactor : Float
smallFactor =
    2


bigFactor : Float
bigFactor =
    smallFactor * smallFactor
