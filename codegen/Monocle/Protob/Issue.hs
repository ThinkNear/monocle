{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE NoGeneralisedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-missing-export-lists #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- | Generated by Haskell protocol buffer compiler. DO NOT EDIT!
module Monocle.Protob.Issue where

import Control.Applicative ((<$>), (<*>), (<|>))
import Control.Applicative qualified as Hs
import Control.DeepSeq qualified as Hs
import Control.Monad qualified as Hs
import Data.ByteString qualified as Hs
import Data.Coerce qualified as Hs
import Data.Int qualified as Hs (Int16, Int32, Int64)
import Data.List.NonEmpty qualified as Hs (NonEmpty (..))
import Data.Map qualified as Hs (Map, mapKeysMonotonic)
import Data.Proxy qualified as Proxy
import Data.String qualified as Hs (fromString)
import Data.Text.Lazy qualified as Hs (Text)
import Data.Vector qualified as Hs (Vector)
import Data.Word qualified as Hs (Word16, Word32, Word64)
import GHC.Enum qualified as Hs
import GHC.Generics qualified as Hs
import Google.Protobuf.Timestamp qualified
import Monocle.Protob.Change qualified
import Proto3.Suite.Class qualified as HsProtobuf
import Proto3.Suite.DotProto qualified as HsProtobuf
import Proto3.Suite.JSONPB ((.:), (.=))
import Proto3.Suite.JSONPB qualified as HsJSONPB
import Proto3.Suite.Types qualified as HsProtobuf
import Proto3.Wire qualified as HsProtobuf
import Unsafe.Coerce qualified as Hs
import Prelude qualified as Hs

data Ident = Ident {identUid :: Hs.Text, identMuid :: Hs.Text}
  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)

instance HsProtobuf.Named Ident where
  nameOf _ = (Hs.fromString "Ident")

instance HsProtobuf.HasDefault Ident

instance HsProtobuf.Message Ident where
  encodeMessage _ Ident {identUid = identUid, identMuid = identMuid} =
    ( Hs.mconcat
        [ ( HsProtobuf.encodeMessageField
              (HsProtobuf.FieldNumber 1)
              identUid
          )
        , ( HsProtobuf.encodeMessageField
              (HsProtobuf.FieldNumber 2)
              identMuid
          )
        ]
    )
  decodeMessage _ =
    (Hs.pure Ident)
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 1)
          )
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 2)
          )
  dotProto _ =
    [ ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 1)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "uid")
          []
          ""
      )
    , ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 2)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "muid")
          []
          ""
      )
    ]

instance HsJSONPB.ToJSONPB Ident where
  toJSONPB (Ident f1 f2) =
    (HsJSONPB.object ["uid" .= f1, "muid" .= f2])
  toEncodingPB (Ident f1 f2) =
    (HsJSONPB.pairs ["uid" .= f1, "muid" .= f2])

instance HsJSONPB.FromJSONPB Ident where
  parseJSONPB =
    ( HsJSONPB.withObject
        "Ident"
        (\obj -> (Hs.pure Ident) <*> obj .: "uid" <*> obj .: "muid")
    )

instance HsJSONPB.ToJSON Ident where
  toJSON = HsJSONPB.toAesonValue
  toEncoding = HsJSONPB.toAesonEncoding

instance HsJSONPB.FromJSON Ident where
  parseJSON = HsJSONPB.parseJSONPB

data Issue = Issue
  { issueId :: Hs.Text
  , issueNumber :: Hs.Int32
  , issueTitle :: Hs.Text
  , issueText :: Hs.Text
  , issueUrl :: Hs.Text
  , issueRepositoryPrefix :: Hs.Text
  , issueRepositoryFullname :: Hs.Text
  , issueRepositoryShortname :: Hs.Text
  , issueAuthor :: Hs.Maybe Monocle.Protob.Change.Ident
  , issueCreatedAt :: Hs.Maybe Google.Protobuf.Timestamp.Timestamp
  , issueUpdatedAt :: Hs.Maybe Google.Protobuf.Timestamp.Timestamp
  , issueOptionalClosedAt :: Hs.Maybe IssueOptionalClosedAt
  , issueState :: Hs.Text
  }
  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)

instance HsProtobuf.Named Issue where
  nameOf _ = (Hs.fromString "Issue")

instance HsProtobuf.HasDefault Issue

instance HsProtobuf.Message Issue where
  encodeMessage
    _
    Issue
      { issueId = issueId
      , issueNumber = issueNumber
      , issueTitle = issueTitle
      , issueText = issueText
      , issueUrl = issueUrl
      , issueRepositoryPrefix = issueRepositoryPrefix
      , issueRepositoryFullname = issueRepositoryFullname
      , issueRepositoryShortname = issueRepositoryShortname
      , issueAuthor = issueAuthor
      , issueCreatedAt = issueCreatedAt
      , issueUpdatedAt = issueUpdatedAt
      , issueOptionalClosedAt = issueOptionalClosedAt
      , issueState = issueState
      } =
      ( Hs.mconcat
          [ ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 1)
                issueId
            )
          , ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 2)
                issueNumber
            )
          , ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 4)
                issueTitle
            )
          , ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 5)
                issueText
            )
          , ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 6)
                issueUrl
            )
          , ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 13)
                issueRepositoryPrefix
            )
          , ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 14)
                issueRepositoryFullname
            )
          , ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 15)
                issueRepositoryShortname
            )
          , ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 16)
                ( Hs.coerce @(Hs.Maybe Monocle.Protob.Change.Ident)
                    @(HsProtobuf.Nested Monocle.Protob.Change.Ident)
                    issueAuthor
                )
            )
          , ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 20)
                ( Hs.coerce @(Hs.Maybe Google.Protobuf.Timestamp.Timestamp)
                    @(HsProtobuf.Nested Google.Protobuf.Timestamp.Timestamp)
                    issueCreatedAt
                )
            )
          , ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 22)
                ( Hs.coerce @(Hs.Maybe Google.Protobuf.Timestamp.Timestamp)
                    @(HsProtobuf.Nested Google.Protobuf.Timestamp.Timestamp)
                    issueUpdatedAt
                )
            )
          , case issueOptionalClosedAt of
              Hs.Nothing -> Hs.mempty
              Hs.Just x ->
                case x of
                  IssueOptionalClosedAtClosedAt y ->
                    ( HsProtobuf.encodeMessageField
                        (HsProtobuf.FieldNumber 23)
                        ( Hs.coerce @(Hs.Maybe Google.Protobuf.Timestamp.Timestamp)
                            @(HsProtobuf.Nested Google.Protobuf.Timestamp.Timestamp)
                            (Hs.Just y)
                        )
                    )
          , ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 24)
                issueState
            )
          ]
      )
  decodeMessage _ =
    (Hs.pure Issue)
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 1)
          )
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 2)
          )
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 4)
          )
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 5)
          )
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 6)
          )
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 13)
          )
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 14)
          )
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 15)
          )
      <*> ( Hs.coerce @(_ (HsProtobuf.Nested Monocle.Protob.Change.Ident))
              @(_ (Hs.Maybe Monocle.Protob.Change.Ident))
              ( HsProtobuf.at
                  HsProtobuf.decodeMessageField
                  (HsProtobuf.FieldNumber 16)
              )
          )
      <*> ( Hs.coerce
              @(_ (HsProtobuf.Nested Google.Protobuf.Timestamp.Timestamp))
              @(_ (Hs.Maybe Google.Protobuf.Timestamp.Timestamp))
              ( HsProtobuf.at
                  HsProtobuf.decodeMessageField
                  (HsProtobuf.FieldNumber 20)
              )
          )
      <*> ( Hs.coerce
              @(_ (HsProtobuf.Nested Google.Protobuf.Timestamp.Timestamp))
              @(_ (Hs.Maybe Google.Protobuf.Timestamp.Timestamp))
              ( HsProtobuf.at
                  HsProtobuf.decodeMessageField
                  (HsProtobuf.FieldNumber 22)
              )
          )
      <*> ( HsProtobuf.oneof
              Hs.Nothing
              [
                ( (HsProtobuf.FieldNumber 23)
                , (Hs.pure (Hs.fmap IssueOptionalClosedAtClosedAt))
                    <*> ( Hs.coerce
                            @(_ (HsProtobuf.Nested Google.Protobuf.Timestamp.Timestamp))
                            @(_ (Hs.Maybe Google.Protobuf.Timestamp.Timestamp))
                            HsProtobuf.decodeMessageField
                        )
                )
              ]
          )
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 24)
          )
  dotProto _ =
    [ ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 1)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "id")
          []
          ""
      )
    , ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 2)
          (HsProtobuf.Prim HsProtobuf.Int32)
          (HsProtobuf.Single "number")
          []
          ""
      )
    , ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 4)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "title")
          []
          ""
      )
    , ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 5)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "text")
          []
          ""
      )
    , ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 6)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "url")
          []
          ""
      )
    , ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 13)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "repository_prefix")
          []
          ""
      )
    , ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 14)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "repository_fullname")
          []
          ""
      )
    , ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 15)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "repository_shortname")
          []
          ""
      )
    , ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 16)
          ( HsProtobuf.Prim
              ( HsProtobuf.Named
                  ( HsProtobuf.Dots
                      (HsProtobuf.Path ("monocle_change" Hs.:| ["Ident"]))
                  )
              )
          )
          (HsProtobuf.Single "author")
          []
          ""
      )
    , ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 20)
          ( HsProtobuf.Prim
              ( HsProtobuf.Named
                  ( HsProtobuf.Dots
                      (HsProtobuf.Path ("google" Hs.:| ["protobuf", "Timestamp"]))
                  )
              )
          )
          (HsProtobuf.Single "created_at")
          []
          ""
      )
    , ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 22)
          ( HsProtobuf.Prim
              ( HsProtobuf.Named
                  ( HsProtobuf.Dots
                      (HsProtobuf.Path ("google" Hs.:| ["protobuf", "Timestamp"]))
                  )
              )
          )
          (HsProtobuf.Single "updated_at")
          []
          ""
      )
    , ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 24)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "state")
          []
          ""
      )
    ]

instance HsJSONPB.ToJSONPB Issue where
  toJSONPB (Issue f1 f2 f4 f5 f6 f13 f14 f15 f16 f20 f22 f23 f24) =
    ( HsJSONPB.object
        [ "id" .= f1
        , "number" .= f2
        , "title" .= f4
        , "text" .= f5
        , "url" .= f6
        , "repository_prefix" .= f13
        , "repository_fullname" .= f14
        , "repository_shortname" .= f15
        , "author" .= f16
        , "created_at" .= f20
        , "updated_at" .= f22
        , ( let encodeOptional_closed_at =
                  ( case f23 of
                      Hs.Just (IssueOptionalClosedAtClosedAt f23) ->
                        (HsJSONPB.pair "closed_at" f23)
                      Hs.Nothing -> Hs.mempty
                  )
             in \options ->
                  if HsJSONPB.optEmitNamedOneof options
                    then
                      ( "optional_closed_at"
                          .= (HsJSONPB.objectOrNull [encodeOptional_closed_at] options)
                      )
                        options
                    else encodeOptional_closed_at options
          )
        , "state" .= f24
        ]
    )
  toEncodingPB (Issue f1 f2 f4 f5 f6 f13 f14 f15 f16 f20 f22 f23 f24) =
    ( HsJSONPB.pairs
        [ "id" .= f1
        , "number" .= f2
        , "title" .= f4
        , "text" .= f5
        , "url" .= f6
        , "repository_prefix" .= f13
        , "repository_fullname" .= f14
        , "repository_shortname" .= f15
        , "author" .= f16
        , "created_at" .= f20
        , "updated_at" .= f22
        , ( let encodeOptional_closed_at =
                  ( case f23 of
                      Hs.Just (IssueOptionalClosedAtClosedAt f23) ->
                        (HsJSONPB.pair "closed_at" f23)
                      Hs.Nothing -> Hs.mempty
                  )
             in \options ->
                  if HsJSONPB.optEmitNamedOneof options
                    then
                      ( "optional_closed_at"
                          .= (HsJSONPB.pairsOrNull [encodeOptional_closed_at] options)
                      )
                        options
                    else encodeOptional_closed_at options
          )
        , "state" .= f24
        ]
    )

instance HsJSONPB.FromJSONPB Issue where
  parseJSONPB =
    ( HsJSONPB.withObject
        "Issue"
        ( \obj ->
            (Hs.pure Issue)
              <*> obj .: "id"
              <*> obj .: "number"
              <*> obj .: "title"
              <*> obj .: "text"
              <*> obj .: "url"
              <*> obj .: "repository_prefix"
              <*> obj .: "repository_fullname"
              <*> obj .: "repository_shortname"
              <*> obj .: "author"
              <*> obj .: "created_at"
              <*> obj .: "updated_at"
              <*> ( let parseOptional_closed_at parseObj =
                          Hs.msum
                            [ Hs.Just Hs.. IssueOptionalClosedAtClosedAt
                                <$> (HsJSONPB.parseField parseObj "closed_at")
                            , Hs.pure Hs.Nothing
                            ]
                     in ( (obj .: "optional_closed_at")
                            Hs.>>= (HsJSONPB.withObject "optional_closed_at" parseOptional_closed_at)
                        )
                          <|> (parseOptional_closed_at obj)
                  )
              <*> obj .: "state"
        )
    )

instance HsJSONPB.ToJSON Issue where
  toJSON = HsJSONPB.toAesonValue
  toEncoding = HsJSONPB.toAesonEncoding

instance HsJSONPB.FromJSON Issue where
  parseJSON = HsJSONPB.parseJSONPB

data IssueOptionalClosedAt = IssueOptionalClosedAtClosedAt Google.Protobuf.Timestamp.Timestamp
  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)

instance HsProtobuf.Named IssueOptionalClosedAt where
  nameOf _ = (Hs.fromString "IssueOptionalClosedAt")

data IssueEvent = IssueEvent
  { issueEventId :: Hs.Text
  , issueEventCreatedAt ::
      Hs.Maybe Google.Protobuf.Timestamp.Timestamp
  , issueEventAuthor :: Hs.Maybe Monocle.Protob.Change.Ident
  , issueEventRepositoryPrefix :: Hs.Text
  , issueEventRepositoryFullname :: Hs.Text
  , issueEventRepositoryShortname :: Hs.Text
  , issueEventNumber :: Hs.Int32
  , issueEventUrl :: Hs.Text
  , issueEventType :: Hs.Maybe IssueEventType
  }
  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)

instance HsProtobuf.Named IssueEvent where
  nameOf _ = (Hs.fromString "IssueEvent")

instance HsProtobuf.HasDefault IssueEvent

instance HsProtobuf.Message IssueEvent where
  encodeMessage
    _
    IssueEvent
      { issueEventId = issueEventId
      , issueEventCreatedAt = issueEventCreatedAt
      , issueEventAuthor = issueEventAuthor
      , issueEventRepositoryPrefix = issueEventRepositoryPrefix
      , issueEventRepositoryFullname = issueEventRepositoryFullname
      , issueEventRepositoryShortname = issueEventRepositoryShortname
      , issueEventNumber = issueEventNumber
      , issueEventUrl = issueEventUrl
      , issueEventType = issueEventType
      } =
      ( Hs.mconcat
          [ ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 1)
                issueEventId
            )
          , ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 2)
                ( Hs.coerce @(Hs.Maybe Google.Protobuf.Timestamp.Timestamp)
                    @(HsProtobuf.Nested Google.Protobuf.Timestamp.Timestamp)
                    issueEventCreatedAt
                )
            )
          , ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 3)
                ( Hs.coerce @(Hs.Maybe Monocle.Protob.Change.Ident)
                    @(HsProtobuf.Nested Monocle.Protob.Change.Ident)
                    issueEventAuthor
                )
            )
          , ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 4)
                issueEventRepositoryPrefix
            )
          , ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 5)
                issueEventRepositoryFullname
            )
          , ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 6)
                issueEventRepositoryShortname
            )
          , ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 9)
                issueEventNumber
            )
          , ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 11)
                issueEventUrl
            )
          , case issueEventType of
              Hs.Nothing -> Hs.mempty
              Hs.Just x ->
                case x of
                  IssueEventTypeIssueCreated y ->
                    ( HsProtobuf.encodeMessageField
                        (HsProtobuf.FieldNumber 15)
                        ( Hs.coerce @(Hs.Maybe Monocle.Protob.Issue.IssueCreatedEvent)
                            @(HsProtobuf.Nested Monocle.Protob.Issue.IssueCreatedEvent)
                            (Hs.Just y)
                        )
                    )
                  IssueEventTypeIssueCommented y ->
                    ( HsProtobuf.encodeMessageField
                        (HsProtobuf.FieldNumber 16)
                        ( Hs.coerce @(Hs.Maybe Monocle.Protob.Issue.IssueCommentedEvent)
                            @(HsProtobuf.Nested Monocle.Protob.Issue.IssueCommentedEvent)
                            (Hs.Just y)
                        )
                    )
                  IssueEventTypeIssueClosed y ->
                    ( HsProtobuf.encodeMessageField
                        (HsProtobuf.FieldNumber 21)
                        ( Hs.coerce @(Hs.Maybe Monocle.Protob.Issue.IssueClosedEvent)
                            @(HsProtobuf.Nested Monocle.Protob.Issue.IssueClosedEvent)
                            (Hs.Just y)
                        )
                    )
          ]
      )
  decodeMessage _ =
    (Hs.pure IssueEvent)
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 1)
          )
      <*> ( Hs.coerce
              @(_ (HsProtobuf.Nested Google.Protobuf.Timestamp.Timestamp))
              @(_ (Hs.Maybe Google.Protobuf.Timestamp.Timestamp))
              ( HsProtobuf.at
                  HsProtobuf.decodeMessageField
                  (HsProtobuf.FieldNumber 2)
              )
          )
      <*> ( Hs.coerce @(_ (HsProtobuf.Nested Monocle.Protob.Change.Ident))
              @(_ (Hs.Maybe Monocle.Protob.Change.Ident))
              ( HsProtobuf.at
                  HsProtobuf.decodeMessageField
                  (HsProtobuf.FieldNumber 3)
              )
          )
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 4)
          )
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 5)
          )
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 6)
          )
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 9)
          )
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 11)
          )
      <*> ( HsProtobuf.oneof
              Hs.Nothing
              [
                ( (HsProtobuf.FieldNumber 15)
                , (Hs.pure (Hs.fmap IssueEventTypeIssueCreated))
                    <*> ( Hs.coerce
                            @(_ (HsProtobuf.Nested Monocle.Protob.Issue.IssueCreatedEvent))
                            @(_ (Hs.Maybe Monocle.Protob.Issue.IssueCreatedEvent))
                            HsProtobuf.decodeMessageField
                        )
                )
              ,
                ( (HsProtobuf.FieldNumber 16)
                , (Hs.pure (Hs.fmap IssueEventTypeIssueCommented))
                    <*> ( Hs.coerce
                            @(_ (HsProtobuf.Nested Monocle.Protob.Issue.IssueCommentedEvent))
                            @(_ (Hs.Maybe Monocle.Protob.Issue.IssueCommentedEvent))
                            HsProtobuf.decodeMessageField
                        )
                )
              ,
                ( (HsProtobuf.FieldNumber 21)
                , (Hs.pure (Hs.fmap IssueEventTypeIssueClosed))
                    <*> ( Hs.coerce
                            @(_ (HsProtobuf.Nested Monocle.Protob.Issue.IssueClosedEvent))
                            @(_ (Hs.Maybe Monocle.Protob.Issue.IssueClosedEvent))
                            HsProtobuf.decodeMessageField
                        )
                )
              ]
          )
  dotProto _ =
    [ ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 1)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "id")
          []
          ""
      )
    , ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 2)
          ( HsProtobuf.Prim
              ( HsProtobuf.Named
                  ( HsProtobuf.Dots
                      (HsProtobuf.Path ("google" Hs.:| ["protobuf", "Timestamp"]))
                  )
              )
          )
          (HsProtobuf.Single "created_at")
          []
          ""
      )
    , ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 3)
          ( HsProtobuf.Prim
              ( HsProtobuf.Named
                  ( HsProtobuf.Dots
                      (HsProtobuf.Path ("monocle_change" Hs.:| ["Ident"]))
                  )
              )
          )
          (HsProtobuf.Single "author")
          []
          ""
      )
    , ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 4)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "repository_prefix")
          []
          ""
      )
    , ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 5)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "repository_fullname")
          []
          ""
      )
    , ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 6)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "repository_shortname")
          []
          ""
      )
    , ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 9)
          (HsProtobuf.Prim HsProtobuf.Int32)
          (HsProtobuf.Single "number")
          []
          ""
      )
    , ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 11)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "url")
          []
          ""
      )
    ]

instance HsJSONPB.ToJSONPB IssueEvent where
  toJSONPB (IssueEvent f1 f2 f3 f4 f5 f6 f9 f11 f15_or_f16_or_f21) =
    ( HsJSONPB.object
        [ "id" .= f1
        , "created_at" .= f2
        , "author" .= f3
        , "repository_prefix" .= f4
        , "repository_fullname" .= f5
        , "repository_shortname" .= f6
        , "number" .= f9
        , "url" .= f11
        , ( let encodeType =
                  ( case f15_or_f16_or_f21 of
                      Hs.Just (IssueEventTypeIssueCreated f15) ->
                        (HsJSONPB.pair "IssueCreated" f15)
                      Hs.Just (IssueEventTypeIssueCommented f16) ->
                        (HsJSONPB.pair "IssueCommented" f16)
                      Hs.Just (IssueEventTypeIssueClosed f21) ->
                        (HsJSONPB.pair "IssueClosed" f21)
                      Hs.Nothing -> Hs.mempty
                  )
             in \options ->
                  if HsJSONPB.optEmitNamedOneof options
                    then ("type" .= (HsJSONPB.objectOrNull [encodeType] options)) options
                    else encodeType options
          )
        ]
    )
  toEncodingPB
    (IssueEvent f1 f2 f3 f4 f5 f6 f9 f11 f15_or_f16_or_f21) =
      ( HsJSONPB.pairs
          [ "id" .= f1
          , "created_at" .= f2
          , "author" .= f3
          , "repository_prefix" .= f4
          , "repository_fullname" .= f5
          , "repository_shortname" .= f6
          , "number" .= f9
          , "url" .= f11
          , ( let encodeType =
                    ( case f15_or_f16_or_f21 of
                        Hs.Just (IssueEventTypeIssueCreated f15) ->
                          (HsJSONPB.pair "IssueCreated" f15)
                        Hs.Just (IssueEventTypeIssueCommented f16) ->
                          (HsJSONPB.pair "IssueCommented" f16)
                        Hs.Just (IssueEventTypeIssueClosed f21) ->
                          (HsJSONPB.pair "IssueClosed" f21)
                        Hs.Nothing -> Hs.mempty
                    )
               in \options ->
                    if HsJSONPB.optEmitNamedOneof options
                      then ("type" .= (HsJSONPB.pairsOrNull [encodeType] options)) options
                      else encodeType options
            )
          ]
      )

instance HsJSONPB.FromJSONPB IssueEvent where
  parseJSONPB =
    ( HsJSONPB.withObject
        "IssueEvent"
        ( \obj ->
            (Hs.pure IssueEvent)
              <*> obj .: "id"
              <*> obj .: "created_at"
              <*> obj .: "author"
              <*> obj .: "repository_prefix"
              <*> obj .: "repository_fullname"
              <*> obj .: "repository_shortname"
              <*> obj .: "number"
              <*> obj .: "url"
              <*> ( let parseType parseObj =
                          Hs.msum
                            [ Hs.Just Hs.. IssueEventTypeIssueCreated
                                <$> (HsJSONPB.parseField parseObj "IssueCreated")
                            , Hs.Just Hs.. IssueEventTypeIssueCommented
                                <$> (HsJSONPB.parseField parseObj "IssueCommented")
                            , Hs.Just Hs.. IssueEventTypeIssueClosed
                                <$> (HsJSONPB.parseField parseObj "IssueClosed")
                            , Hs.pure Hs.Nothing
                            ]
                     in ((obj .: "type") Hs.>>= (HsJSONPB.withObject "type" parseType))
                          <|> (parseType obj)
                  )
        )
    )

instance HsJSONPB.ToJSON IssueEvent where
  toJSON = HsJSONPB.toAesonValue
  toEncoding = HsJSONPB.toAesonEncoding

instance HsJSONPB.FromJSON IssueEvent where
  parseJSON = HsJSONPB.parseJSONPB

data IssueEventType
  = IssueEventTypeIssueCreated Monocle.Protob.Issue.IssueCreatedEvent
  | IssueEventTypeIssueCommented Monocle.Protob.Issue.IssueCommentedEvent
  | IssueEventTypeIssueClosed Monocle.Protob.Issue.IssueClosedEvent
  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)

instance HsProtobuf.Named IssueEventType where
  nameOf _ = (Hs.fromString "IssueEventType")

data IssueCreatedEvent = IssueCreatedEvent {}
  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)

instance HsProtobuf.Named IssueCreatedEvent where
  nameOf _ = (Hs.fromString "IssueCreatedEvent")

instance HsProtobuf.HasDefault IssueCreatedEvent

instance HsProtobuf.Message IssueCreatedEvent where
  encodeMessage _ IssueCreatedEvent {} = (Hs.mconcat [])
  decodeMessage _ = (Hs.pure IssueCreatedEvent)
  dotProto _ = []

instance HsJSONPB.ToJSONPB IssueCreatedEvent where
  toJSONPB (IssueCreatedEvent) = (HsJSONPB.object [])
  toEncodingPB (IssueCreatedEvent) = (HsJSONPB.pairs [])

instance HsJSONPB.FromJSONPB IssueCreatedEvent where
  parseJSONPB =
    ( HsJSONPB.withObject
        "IssueCreatedEvent"
        (\obj -> (Hs.pure IssueCreatedEvent))
    )

instance HsJSONPB.ToJSON IssueCreatedEvent where
  toJSON = HsJSONPB.toAesonValue
  toEncoding = HsJSONPB.toAesonEncoding

instance HsJSONPB.FromJSON IssueCreatedEvent where
  parseJSON = HsJSONPB.parseJSONPB

newtype IssueCommentedEvent = IssueCommentedEvent
  { issueCommentedEventComment ::
      Hs.Text
  }
  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)

instance HsProtobuf.Named IssueCommentedEvent where
  nameOf _ = (Hs.fromString "IssueCommentedEvent")

instance HsProtobuf.HasDefault IssueCommentedEvent

instance HsProtobuf.Message IssueCommentedEvent where
  encodeMessage
    _
    IssueCommentedEvent
      { issueCommentedEventComment =
        issueCommentedEventComment
      } =
      ( Hs.mconcat
          [ ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 1)
                issueCommentedEventComment
            )
          ]
      )
  decodeMessage _ =
    (Hs.pure IssueCommentedEvent)
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 1)
          )
  dotProto _ =
    [ ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 1)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "comment")
          []
          ""
      )
    ]

instance HsJSONPB.ToJSONPB IssueCommentedEvent where
  toJSONPB (IssueCommentedEvent f1) =
    (HsJSONPB.object ["comment" .= f1])
  toEncodingPB (IssueCommentedEvent f1) =
    (HsJSONPB.pairs ["comment" .= f1])

instance HsJSONPB.FromJSONPB IssueCommentedEvent where
  parseJSONPB =
    ( HsJSONPB.withObject
        "IssueCommentedEvent"
        (\obj -> (Hs.pure IssueCommentedEvent) <*> obj .: "comment")
    )

instance HsJSONPB.ToJSON IssueCommentedEvent where
  toJSON = HsJSONPB.toAesonValue
  toEncoding = HsJSONPB.toAesonEncoding

instance HsJSONPB.FromJSON IssueCommentedEvent where
  parseJSON = HsJSONPB.parseJSONPB

data IssueClosedEvent = IssueClosedEvent {}
  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)

instance HsProtobuf.Named IssueClosedEvent where
  nameOf _ = (Hs.fromString "IssueClosedEvent")

instance HsProtobuf.HasDefault IssueClosedEvent

instance HsProtobuf.Message IssueClosedEvent where
  encodeMessage _ IssueClosedEvent {} = (Hs.mconcat [])
  decodeMessage _ = (Hs.pure IssueClosedEvent)
  dotProto _ = []

instance HsJSONPB.ToJSONPB IssueClosedEvent where
  toJSONPB (IssueClosedEvent) = (HsJSONPB.object [])
  toEncodingPB (IssueClosedEvent) = (HsJSONPB.pairs [])

instance HsJSONPB.FromJSONPB IssueClosedEvent where
  parseJSONPB =
    ( HsJSONPB.withObject
        "IssueClosedEvent"
        (\obj -> (Hs.pure IssueClosedEvent))
    )

instance HsJSONPB.ToJSON IssueClosedEvent where
  toJSON = HsJSONPB.toAesonValue
  toEncoding = HsJSONPB.toAesonEncoding

instance HsJSONPB.FromJSON IssueClosedEvent where
  parseJSON = HsJSONPB.parseJSONPB
