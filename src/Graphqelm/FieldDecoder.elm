module Graphqelm.FieldDecoder exposing (FieldDecoder(FieldDecoder), map)

{-| `FieldDecoder`s are automatically generated by the `graphqelm` CLI command.
You can use `Graphqelm.FieldDecoder.map` to transform a value.
@docs map, FieldDecoder
-}

import Graphqelm.Field as Field exposing (Field)
import Json.Decode as Decode exposing (Decoder)


{-| -}
type FieldDecoder decodesTo typeLock
    = FieldDecoder Field (Decoder decodesTo)


{-| Maps the data coming back from the GraphQL endpoint. In this example,
`User.name` is a module that the `graphqelm` CLI tool created which tells us
that the `name` field on a `User` object is a String according to your GraphQL
schema.

    import Api.Object
    import Api.Object.User as User
    import Graphqelm.FieldDecoder as FieldDecoder
    import Graphqelm.Object exposing (Object, with)

    human : Object String Api.Object.User
    human =
        User.build identity
            |> with (User.name |> FieldDecoder.map String.toUpper)

-}
map : (decodesTo -> mapsTo) -> FieldDecoder decodesTo typeLock -> FieldDecoder mapsTo typeLock
map mapFunction (FieldDecoder field decoder) =
    FieldDecoder field (Decode.map mapFunction decoder)
