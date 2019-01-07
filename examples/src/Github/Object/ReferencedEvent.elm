-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.ReferencedEvent exposing (actor, commit, commitRepository, createdAt, id, isCrossReference, isCrossRepository, isDirectReference, subject)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.ScalarDecoders
import Github.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Github.Interface.Actor -> SelectionSet (Maybe decodesTo) Github.Object.ReferencedEvent
actor object_ =
    Object.selectionForCompositeField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the commit associated with the 'referenced' event.
-}
commit : SelectionSet decodesTo Github.Object.Commit -> SelectionSet (Maybe decodesTo) Github.Object.ReferencedEvent
commit object_ =
    Object.selectionForCompositeField "commit" [] object_ (identity >> Decode.nullable)


{-| Identifies the repository associated with the 'referenced' event.
-}
commitRepository : SelectionSet decodesTo Github.Object.Repository -> SelectionSet decodesTo Github.Object.ReferencedEvent
commitRepository object_ =
    Object.selectionForCompositeField "commitRepository" [] object_ identity


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.ScalarDecoders.DateTime Github.Object.ReferencedEvent
createdAt =
    Object.selectionForField "ScalarDecoders.DateTime" "createdAt" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderDateTime)


id : SelectionSet Github.ScalarDecoders.Id Github.Object.ReferencedEvent
id =
    Object.selectionForField "ScalarDecoders.Id" "id" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderId)


{-| Reference originated in a different repository.
-}
isCrossReference : SelectionSet Bool Github.Object.ReferencedEvent
isCrossReference =
    Object.selectionForField "Bool" "isCrossReference" [] Decode.bool


{-| Reference originated in a different repository.
-}
isCrossRepository : SelectionSet Bool Github.Object.ReferencedEvent
isCrossRepository =
    Object.selectionForField "Bool" "isCrossRepository" [] Decode.bool


{-| Checks if the commit message itself references the subject. Can be false in the case of a commit comment reference.
-}
isDirectReference : SelectionSet Bool Github.Object.ReferencedEvent
isDirectReference =
    Object.selectionForField "Bool" "isDirectReference" [] Decode.bool


{-| Object referenced by event.
-}
subject : SelectionSet decodesTo Github.Union.ReferencedSubject -> SelectionSet decodesTo Github.Object.ReferencedEvent
subject object_ =
    Object.selectionForCompositeField "subject" [] object_ identity
