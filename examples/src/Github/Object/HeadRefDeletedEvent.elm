-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.HeadRefDeletedEvent exposing (actor, createdAt, headRef, headRefName, id, pullRequest)

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
actor : SelectionSet decodesTo Github.Interface.Actor -> SelectionSet (Maybe decodesTo) Github.Object.HeadRefDeletedEvent
actor object_ =
    Object.selectionForCompositeField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.ScalarDecoders.DateTime Github.Object.HeadRefDeletedEvent
createdAt =
    Object.selectionForField "ScalarDecoders.DateTime" "createdAt" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderDateTime)


{-| Identifies the Ref associated with the `head_ref_deleted` event.
-}
headRef : SelectionSet decodesTo Github.Object.Ref -> SelectionSet (Maybe decodesTo) Github.Object.HeadRefDeletedEvent
headRef object_ =
    Object.selectionForCompositeField "headRef" [] object_ (identity >> Decode.nullable)


{-| Identifies the name of the Ref associated with the `head_ref_deleted` event.
-}
headRefName : SelectionSet String Github.Object.HeadRefDeletedEvent
headRefName =
    Object.selectionForField "String" "headRefName" [] Decode.string


id : SelectionSet Github.ScalarDecoders.Id Github.Object.HeadRefDeletedEvent
id =
    Object.selectionForField "ScalarDecoders.Id" "id" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderId)


{-| PullRequest referenced by event.
-}
pullRequest : SelectionSet decodesTo Github.Object.PullRequest -> SelectionSet decodesTo Github.Object.HeadRefDeletedEvent
pullRequest object_ =
    Object.selectionForCompositeField "pullRequest" [] object_ identity
