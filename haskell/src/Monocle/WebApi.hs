{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-missing-export-lists -fno-warn-unused-imports #-}

-- Generated by monocle-codegen. DO NOT EDIT!

-- |
-- Copyright: (c) 2021 Monocle authors
-- SPDX-License-Identifier: AGPL-3.0-only
module Monocle.WebApi where

import Control.Monad.Catch (MonadThrow)
import Control.Monad.IO.Class (MonadIO)
import Monocle.Client (MonocleClient, monocleReq)
import Monocle.Config
import Monocle.Search
import Monocle.TaskData

configGetProjects :: (MonadThrow m, MonadIO m) => MonocleClient -> GetProjectsRequest -> m GetProjectsResponse
configGetProjects = monocleReq "api/1/get_projects"

searchSuggestions :: (MonadThrow m, MonadIO m) => MonocleClient -> SearchSuggestionsRequest -> m SearchSuggestionsResponse
searchSuggestions = monocleReq "api/1/suggestions"

taskDataCommit :: (MonadThrow m, MonadIO m) => MonocleClient -> TaskDataCommitRequest -> m TaskDataCommitResponse
taskDataCommit = monocleReq "api/1/task_data_commit"

taskDataGetLastUpdated :: (MonadThrow m, MonadIO m) => MonocleClient -> TaskDataGetLastUpdatedRequest -> m TaskDataGetLastUpdatedResponse
taskDataGetLastUpdated = monocleReq "api/1/task_data_get_last_updated"

taskDataAdd :: (MonadThrow m, MonadIO m) => MonocleClient -> AddRequest -> m AddResponse
taskDataAdd = monocleReq "api/1/task_data_add"
