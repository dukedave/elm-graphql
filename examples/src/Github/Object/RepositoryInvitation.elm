-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.RepositoryInvitation exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.RepositoryInvitation
selection constructor =
    Object.selection constructor


id : Field Github.Scalar.Id Github.Object.RepositoryInvitation
id =
    Object.fieldDecoder "id" [] (Decode.string |> Decode.map Github.Scalar.Id)


{-| The user who received the invitation.
-}
invitee : SelectionSet decodesTo Github.Object.User -> Field decodesTo Github.Object.RepositoryInvitation
invitee object =
    Object.selectionField "invitee" [] object identity


{-| The user who created the invitation.
-}
inviter : SelectionSet decodesTo Github.Object.User -> Field decodesTo Github.Object.RepositoryInvitation
inviter object =
    Object.selectionField "inviter" [] object identity


{-| The Repository the user is invited to.
-}
repository : SelectionSet decodesTo Github.Object.RepositoryInvitationRepository -> Field (Maybe decodesTo) Github.Object.RepositoryInvitation
repository object =
    Object.selectionField "repository" [] object (identity >> Decode.maybe)
