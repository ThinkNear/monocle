{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}

-- Generated by monocle-codegen. DO NOT EDIT!

-- |
-- Copyright: (c) 2021 Monocle authors
-- SPDX-License-Identifier: AGPL-3.0-only
module Monocle.Servant.HTTP (MonocleAPI, server) where

import Monocle.Api.Server (configHealth, crawlerAddDoc, crawlerCommit, crawlerCommitInfo, searchFields, searchQuery)
import Monocle.Config (HealthRequest, HealthResponse)
import Monocle.Crawler (AddDocRequest, AddDocResponse, CommitInfoRequest, CommitInfoResponse, CommitRequest, CommitResponse)
import Monocle.Search (FieldsRequest, FieldsResponse, QueryRequest, QueryResponse)
import Monocle.Servant.Env
import Monocle.Servant.PBJSON (PBJSON)
import Servant

type MonocleAPI =
  "health" :> ReqBody '[JSON] HealthRequest :> Post '[PBJSON, JSON] HealthResponse
    :<|> "search" :> "fields" :> ReqBody '[JSON] FieldsRequest :> Post '[PBJSON, JSON] FieldsResponse
    :<|> "search" :> "query" :> ReqBody '[JSON] QueryRequest :> Post '[PBJSON, JSON] QueryResponse
    :<|> "crawler" :> "add" :> ReqBody '[JSON] AddDocRequest :> Post '[PBJSON, JSON] AddDocResponse
    :<|> "crawler" :> "commit" :> ReqBody '[JSON] CommitRequest :> Post '[PBJSON, JSON] CommitResponse
    :<|> "crawler" :> "get_commit_info" :> ReqBody '[JSON] CommitInfoRequest :> Post '[PBJSON, JSON] CommitInfoResponse

server :: ServerT MonocleAPI AppM
server =
  configHealth
    :<|> searchFields
    :<|> searchQuery
    :<|> crawlerAddDoc
    :<|> crawlerCommit
    :<|> crawlerCommitInfo
