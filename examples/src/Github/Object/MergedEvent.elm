-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.MergedEvent exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.MergedEvent
selection constructor =
    Object.selection constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.MergedEvent
actor object =
    Object.selectionField "actor" [] object (identity >> Decode.maybe)


{-| Identifies the commit associated with the `merge` event.
-}
commit : SelectionSet decodesTo Github.Object.Commit -> Field (Maybe decodesTo) Github.Object.MergedEvent
commit object =
    Object.selectionField "commit" [] object (identity >> Decode.maybe)


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.MergedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] (Decode.string |> Decode.map Github.Scalar.DateTime)


id : Field Github.Scalar.Id Github.Object.MergedEvent
id =
    Object.fieldDecoder "id" [] (Decode.string |> Decode.map Github.Scalar.Id)


{-| Identifies the Ref associated with the `merge` event.
-}
mergeRef : SelectionSet decodesTo Github.Object.Ref -> Field (Maybe decodesTo) Github.Object.MergedEvent
mergeRef object =
    Object.selectionField "mergeRef" [] object (identity >> Decode.maybe)


{-| Identifies the name of the Ref associated with the `merge` event.
-}
mergeRefName : Field String Github.Object.MergedEvent
mergeRefName =
    Object.fieldDecoder "mergeRefName" [] Decode.string


{-| PullRequest referenced by event.
-}
pullRequest : SelectionSet decodesTo Github.Object.PullRequest -> Field decodesTo Github.Object.MergedEvent
pullRequest object =
    Object.selectionField "pullRequest" [] object identity


{-| The HTTP path for this merged event.
-}
resourcePath : Field Github.Scalar.Uri Github.Object.MergedEvent
resourcePath =
    Object.fieldDecoder "resourcePath" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for this merged event.
-}
url : Field Github.Scalar.Uri Github.Object.MergedEvent
url =
    Object.fieldDecoder "url" [] (Decode.string |> Decode.map Github.Scalar.Uri)
