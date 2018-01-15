-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.Blob exposing (..)

import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Blob
selection constructor =
    Object.selection constructor


{-| An abbreviated version of the Git object ID
-}
abbreviatedOid : Field String Github.Object.Blob
abbreviatedOid =
    Object.fieldDecoder "abbreviatedOid" [] Decode.string


{-| Byte size of Blob object
-}
byteSize : Field Int Github.Object.Blob
byteSize =
    Object.fieldDecoder "byteSize" [] Decode.int


{-| The HTTP path for this Git object
-}
commitResourcePath : Field Github.Scalar.Uri Github.Object.Blob
commitResourcePath =
    Object.fieldDecoder "commitResourcePath" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for this Git object
-}
commitUrl : Field Github.Scalar.Uri Github.Object.Blob
commitUrl =
    Object.fieldDecoder "commitUrl" [] (Decode.string |> Decode.map Github.Scalar.Uri)


id : Field Github.Scalar.Id Github.Object.Blob
id =
    Object.fieldDecoder "id" [] (Decode.string |> Decode.map Github.Scalar.Id)


{-| Indicates whether the Blob is binary or text
-}
isBinary : Field Bool Github.Object.Blob
isBinary =
    Object.fieldDecoder "isBinary" [] Decode.bool


{-| Indicates whether the contents is truncated
-}
isTruncated : Field Bool Github.Object.Blob
isTruncated =
    Object.fieldDecoder "isTruncated" [] Decode.bool


{-| The Git object ID
-}
oid : Field Github.Scalar.GitObjectID Github.Object.Blob
oid =
    Object.fieldDecoder "oid" [] (Decode.string |> Decode.map Github.Scalar.GitObjectID)


{-| The Repository the Git object belongs to
-}
repository : SelectionSet decodesTo Github.Object.Repository -> Field decodesTo Github.Object.Blob
repository object =
    Object.selectionField "repository" [] object identity


{-| UTF8 text data or null if the Blob is binary
-}
text : Field (Maybe String) Github.Object.Blob
text =
    Object.fieldDecoder "text" [] (Decode.string |> Decode.maybe)
