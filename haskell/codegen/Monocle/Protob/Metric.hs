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
module Monocle.Protob.Metric where

import Control.Applicative ((<$>), (<*>), (<|>))
import qualified Control.Applicative as Hs
import qualified Control.DeepSeq as Hs
import qualified Control.Monad as Hs
import qualified Data.ByteString as Hs
import qualified Data.Coerce as Hs
import qualified Data.Int as Hs (Int16, Int32, Int64)
import qualified Data.List.NonEmpty as Hs (NonEmpty (..))
import qualified Data.Map as Hs (Map, mapKeysMonotonic)
import qualified Data.Proxy as Proxy
import qualified Data.String as Hs (fromString)
import qualified Data.Text.Lazy as Hs (Text)
import qualified Data.Vector as Hs (Vector)
import qualified Data.Word as Hs (Word16, Word32, Word64)
import qualified GHC.Enum as Hs
import qualified GHC.Generics as Hs
import qualified Proto3.Suite.Class as HsProtobuf
import qualified Proto3.Suite.DotProto as HsProtobuf
import Proto3.Suite.JSONPB ((.:), (.=))
import qualified Proto3.Suite.JSONPB as HsJSONPB
import qualified Proto3.Suite.Types as HsProtobuf
import qualified Proto3.Wire as HsProtobuf
import qualified Unsafe.Coerce as Hs
import qualified Prelude as Hs

data MetricInfo = MetricInfo
  { metricInfoName :: Hs.Text,
    metricInfoDescription :: Hs.Text,
    metricInfoLongDescription :: Hs.Text,
    metricInfoMetric :: Hs.Text
  }
  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)

instance HsProtobuf.Named MetricInfo where
  nameOf _ = (Hs.fromString "MetricInfo")

instance HsProtobuf.HasDefault MetricInfo

instance HsProtobuf.Message MetricInfo where
  encodeMessage
    _
    MetricInfo
      { metricInfoName = metricInfoName,
        metricInfoDescription = metricInfoDescription,
        metricInfoLongDescription = metricInfoLongDescription,
        metricInfoMetric = metricInfoMetric
      } =
      ( Hs.mconcat
          [ ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 1)
                metricInfoName
            ),
            ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 2)
                metricInfoDescription
            ),
            ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 3)
                metricInfoLongDescription
            ),
            ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 4)
                metricInfoMetric
            )
          ]
      )
  decodeMessage _ =
    (Hs.pure MetricInfo)
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
              (HsProtobuf.FieldNumber 3)
          )
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 4)
          )
  dotProto _ =
    [ ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 1)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "name")
          []
          ""
      ),
      ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 2)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "description")
          []
          ""
      ),
      ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 3)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "long_description")
          []
          ""
      ),
      ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 4)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "metric")
          []
          ""
      )
    ]

instance HsJSONPB.ToJSONPB MetricInfo where
  toJSONPB (MetricInfo f1 f2 f3 f4) =
    ( HsJSONPB.object
        [ "name" .= f1,
          "description" .= f2,
          "long_description" .= f3,
          "metric" .= f4
        ]
    )
  toEncodingPB (MetricInfo f1 f2 f3 f4) =
    ( HsJSONPB.pairs
        [ "name" .= f1,
          "description" .= f2,
          "long_description" .= f3,
          "metric" .= f4
        ]
    )

instance HsJSONPB.FromJSONPB MetricInfo where
  parseJSONPB =
    ( HsJSONPB.withObject
        "MetricInfo"
        ( \obj ->
            (Hs.pure MetricInfo) <*> obj .: "name" <*> obj .: "description"
              <*> obj .: "long_description"
              <*> obj .: "metric"
        )
    )

instance HsJSONPB.ToJSON MetricInfo where
  toJSON = HsJSONPB.toAesonValue
  toEncoding = HsJSONPB.toAesonEncoding

instance HsJSONPB.FromJSON MetricInfo where
  parseJSON = HsJSONPB.parseJSONPB

newtype ListRequest = ListRequest {listRequestVoid :: Hs.Text}
  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)

instance HsProtobuf.Named ListRequest where
  nameOf _ = (Hs.fromString "ListRequest")

instance HsProtobuf.HasDefault ListRequest

instance HsProtobuf.Message ListRequest where
  encodeMessage _ ListRequest {listRequestVoid = listRequestVoid} =
    ( Hs.mconcat
        [ ( HsProtobuf.encodeMessageField
              (HsProtobuf.FieldNumber 1)
              listRequestVoid
          )
        ]
    )
  decodeMessage _ =
    (Hs.pure ListRequest)
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 1)
          )
  dotProto _ =
    [ ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 1)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "void")
          []
          ""
      )
    ]

instance HsJSONPB.ToJSONPB ListRequest where
  toJSONPB (ListRequest f1) = (HsJSONPB.object ["void" .= f1])
  toEncodingPB (ListRequest f1) = (HsJSONPB.pairs ["void" .= f1])

instance HsJSONPB.FromJSONPB ListRequest where
  parseJSONPB =
    ( HsJSONPB.withObject
        "ListRequest"
        (\obj -> (Hs.pure ListRequest) <*> obj .: "void")
    )

instance HsJSONPB.ToJSON ListRequest where
  toJSON = HsJSONPB.toAesonValue
  toEncoding = HsJSONPB.toAesonEncoding

instance HsJSONPB.FromJSON ListRequest where
  parseJSON = HsJSONPB.parseJSONPB

newtype ListResponse = ListResponse
  { listResponseMetrics ::
      Hs.Vector Monocle.Protob.Metric.MetricInfo
  }
  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)

instance HsProtobuf.Named ListResponse where
  nameOf _ = (Hs.fromString "ListResponse")

instance HsProtobuf.HasDefault ListResponse

instance HsProtobuf.Message ListResponse where
  encodeMessage
    _
    ListResponse {listResponseMetrics = listResponseMetrics} =
      ( Hs.mconcat
          [ ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 1)
                ( Hs.coerce @(Hs.Vector Monocle.Protob.Metric.MetricInfo)
                    @(HsProtobuf.NestedVec Monocle.Protob.Metric.MetricInfo)
                    listResponseMetrics
                )
            )
          ]
      )
  decodeMessage _ =
    (Hs.pure ListResponse)
      <*> ( Hs.coerce
              @(_ (HsProtobuf.NestedVec Monocle.Protob.Metric.MetricInfo))
              @(_ (Hs.Vector Monocle.Protob.Metric.MetricInfo))
              ( HsProtobuf.at
                  HsProtobuf.decodeMessageField
                  (HsProtobuf.FieldNumber 1)
              )
          )
  dotProto _ =
    [ ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 1)
          ( HsProtobuf.Repeated
              (HsProtobuf.Named (HsProtobuf.Single "MetricInfo"))
          )
          (HsProtobuf.Single "metrics")
          []
          ""
      )
    ]

instance HsJSONPB.ToJSONPB ListResponse where
  toJSONPB (ListResponse f1) = (HsJSONPB.object ["metrics" .= f1])
  toEncodingPB (ListResponse f1) = (HsJSONPB.pairs ["metrics" .= f1])

instance HsJSONPB.FromJSONPB ListResponse where
  parseJSONPB =
    ( HsJSONPB.withObject
        "ListResponse"
        (\obj -> (Hs.pure ListResponse) <*> obj .: "metrics")
    )

instance HsJSONPB.ToJSON ListResponse where
  toJSON = HsJSONPB.toAesonValue
  toEncoding = HsJSONPB.toAesonEncoding

instance HsJSONPB.FromJSON ListResponse where
  parseJSON = HsJSONPB.parseJSONPB

newtype Trend = Trend {trendInterval :: Hs.Word32}
  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)

instance HsProtobuf.Named Trend where
  nameOf _ = (Hs.fromString "Trend")

instance HsProtobuf.HasDefault Trend

instance HsProtobuf.Message Trend where
  encodeMessage _ Trend {trendInterval = trendInterval} =
    ( Hs.mconcat
        [ ( HsProtobuf.encodeMessageField
              (HsProtobuf.FieldNumber 1)
              trendInterval
          )
        ]
    )
  decodeMessage _ =
    (Hs.pure Trend)
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 1)
          )
  dotProto _ =
    [ ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 1)
          (HsProtobuf.Prim HsProtobuf.UInt32)
          (HsProtobuf.Single "interval")
          []
          ""
      )
    ]

instance HsJSONPB.ToJSONPB Trend where
  toJSONPB (Trend f1) = (HsJSONPB.object ["interval" .= f1])
  toEncodingPB (Trend f1) = (HsJSONPB.pairs ["interval" .= f1])

instance HsJSONPB.FromJSONPB Trend where
  parseJSONPB =
    ( HsJSONPB.withObject
        "Trend"
        (\obj -> (Hs.pure Trend) <*> obj .: "interval")
    )

instance HsJSONPB.ToJSON Trend where
  toJSON = HsJSONPB.toAesonValue
  toEncoding = HsJSONPB.toAesonEncoding

instance HsJSONPB.FromJSON Trend where
  parseJSON = HsJSONPB.parseJSONPB

data GetRequest = GetRequest
  { getRequestIndex :: Hs.Text,
    getRequestUsername :: Hs.Text,
    getRequestQuery :: Hs.Text,
    getRequestMetric :: Hs.Text,
    getRequestOptions :: Hs.Maybe GetRequestOptions
  }
  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)

instance HsProtobuf.Named GetRequest where
  nameOf _ = (Hs.fromString "GetRequest")

instance HsProtobuf.HasDefault GetRequest

instance HsProtobuf.Message GetRequest where
  encodeMessage
    _
    GetRequest
      { getRequestIndex = getRequestIndex,
        getRequestUsername = getRequestUsername,
        getRequestQuery = getRequestQuery,
        getRequestMetric = getRequestMetric,
        getRequestOptions = getRequestOptions
      } =
      ( Hs.mconcat
          [ ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 1)
                getRequestIndex
            ),
            ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 2)
                getRequestUsername
            ),
            ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 3)
                getRequestQuery
            ),
            ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 4)
                getRequestMetric
            ),
            case getRequestOptions of
              Hs.Nothing -> Hs.mempty
              Hs.Just x ->
                case x of
                  GetRequestOptionsTrend y ->
                    ( HsProtobuf.encodeMessageField
                        (HsProtobuf.FieldNumber 5)
                        ( Hs.coerce @(Hs.Maybe Monocle.Protob.Metric.Trend)
                            @(HsProtobuf.Nested Monocle.Protob.Metric.Trend)
                            (Hs.Just y)
                        )
                    )
          ]
      )
  decodeMessage _ =
    (Hs.pure GetRequest)
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
              (HsProtobuf.FieldNumber 3)
          )
      <*> ( HsProtobuf.at
              HsProtobuf.decodeMessageField
              (HsProtobuf.FieldNumber 4)
          )
      <*> ( HsProtobuf.oneof
              Hs.Nothing
              [ ( (HsProtobuf.FieldNumber 5),
                  (Hs.pure (Hs.fmap GetRequestOptionsTrend))
                    <*> ( Hs.coerce @(_ (HsProtobuf.Nested Monocle.Protob.Metric.Trend))
                            @(_ (Hs.Maybe Monocle.Protob.Metric.Trend))
                            HsProtobuf.decodeMessageField
                        )
                )
              ]
          )
  dotProto _ =
    [ ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 1)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "index")
          []
          ""
      ),
      ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 2)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "username")
          []
          ""
      ),
      ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 3)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "query")
          []
          ""
      ),
      ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 4)
          (HsProtobuf.Prim HsProtobuf.String)
          (HsProtobuf.Single "metric")
          []
          ""
      )
    ]

instance HsJSONPB.ToJSONPB GetRequest where
  toJSONPB (GetRequest f1 f2 f3 f4 f5) =
    ( HsJSONPB.object
        [ "index" .= f1,
          "username" .= f2,
          "query" .= f3,
          "metric" .= f4,
          ( let encodeOptions =
                  ( case f5 of
                      Hs.Just (GetRequestOptionsTrend f5) -> (HsJSONPB.pair "trend" f5)
                      Hs.Nothing -> Hs.mempty
                  )
             in \options ->
                  if HsJSONPB.optEmitNamedOneof options
                    then
                      ("options" .= (HsJSONPB.objectOrNull [encodeOptions] options))
                        options
                    else encodeOptions options
          )
        ]
    )
  toEncodingPB (GetRequest f1 f2 f3 f4 f5) =
    ( HsJSONPB.pairs
        [ "index" .= f1,
          "username" .= f2,
          "query" .= f3,
          "metric" .= f4,
          ( let encodeOptions =
                  ( case f5 of
                      Hs.Just (GetRequestOptionsTrend f5) -> (HsJSONPB.pair "trend" f5)
                      Hs.Nothing -> Hs.mempty
                  )
             in \options ->
                  if HsJSONPB.optEmitNamedOneof options
                    then
                      ("options" .= (HsJSONPB.pairsOrNull [encodeOptions] options))
                        options
                    else encodeOptions options
          )
        ]
    )

instance HsJSONPB.FromJSONPB GetRequest where
  parseJSONPB =
    ( HsJSONPB.withObject
        "GetRequest"
        ( \obj ->
            (Hs.pure GetRequest) <*> obj .: "index" <*> obj .: "username"
              <*> obj .: "query"
              <*> obj .: "metric"
              <*> ( let parseOptions parseObj =
                          Hs.msum
                            [ Hs.Just Hs.. GetRequestOptionsTrend
                                <$> (HsJSONPB.parseField parseObj "trend"),
                              Hs.pure Hs.Nothing
                            ]
                     in ( (obj .: "options")
                            Hs.>>= (HsJSONPB.withObject "options" parseOptions)
                        )
                          <|> (parseOptions obj)
                  )
        )
    )

instance HsJSONPB.ToJSON GetRequest where
  toJSON = HsJSONPB.toAesonValue
  toEncoding = HsJSONPB.toAesonEncoding

instance HsJSONPB.FromJSON GetRequest where
  parseJSON = HsJSONPB.parseJSONPB

data GetRequestOptions = GetRequestOptionsTrend Monocle.Protob.Metric.Trend
  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)

instance HsProtobuf.Named GetRequestOptions where
  nameOf _ = (Hs.fromString "GetRequestOptions")

data HistoInt = HistoInt
  { histoIntDate :: Hs.Text,
    histoIntCount :: Hs.Word32
  }
  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)

instance HsProtobuf.Named HistoInt where
  nameOf _ = (Hs.fromString "HistoInt")

instance HsProtobuf.HasDefault HistoInt

instance HsProtobuf.Message HistoInt where
  encodeMessage
    _
    HistoInt
      { histoIntDate = histoIntDate,
        histoIntCount = histoIntCount
      } =
      ( Hs.mconcat
          [ ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 1)
                histoIntDate
            ),
            ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 2)
                histoIntCount
            )
          ]
      )
  decodeMessage _ =
    (Hs.pure HistoInt)
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
          (HsProtobuf.Single "date")
          []
          ""
      ),
      ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 2)
          (HsProtobuf.Prim HsProtobuf.UInt32)
          (HsProtobuf.Single "count")
          []
          ""
      )
    ]

instance HsJSONPB.ToJSONPB HistoInt where
  toJSONPB (HistoInt f1 f2) =
    (HsJSONPB.object ["date" .= f1, "count" .= f2])
  toEncodingPB (HistoInt f1 f2) =
    (HsJSONPB.pairs ["date" .= f1, "count" .= f2])

instance HsJSONPB.FromJSONPB HistoInt where
  parseJSONPB =
    ( HsJSONPB.withObject
        "HistoInt"
        (\obj -> (Hs.pure HistoInt) <*> obj .: "date" <*> obj .: "count")
    )

instance HsJSONPB.ToJSON HistoInt where
  toJSON = HsJSONPB.toAesonValue
  toEncoding = HsJSONPB.toAesonEncoding

instance HsJSONPB.FromJSON HistoInt where
  parseJSON = HsJSONPB.parseJSONPB

data HistoFloat = HistoFloat
  { histoFloatDate :: Hs.Text,
    histoFloatCount :: Hs.Float
  }
  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)

instance HsProtobuf.Named HistoFloat where
  nameOf _ = (Hs.fromString "HistoFloat")

instance HsProtobuf.HasDefault HistoFloat

instance HsProtobuf.Message HistoFloat where
  encodeMessage
    _
    HistoFloat
      { histoFloatDate = histoFloatDate,
        histoFloatCount = histoFloatCount
      } =
      ( Hs.mconcat
          [ ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 1)
                histoFloatDate
            ),
            ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 2)
                histoFloatCount
            )
          ]
      )
  decodeMessage _ =
    (Hs.pure HistoFloat)
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
          (HsProtobuf.Single "date")
          []
          ""
      ),
      ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 2)
          (HsProtobuf.Prim HsProtobuf.Float)
          (HsProtobuf.Single "count")
          []
          ""
      )
    ]

instance HsJSONPB.ToJSONPB HistoFloat where
  toJSONPB (HistoFloat f1 f2) =
    (HsJSONPB.object ["date" .= f1, "count" .= f2])
  toEncodingPB (HistoFloat f1 f2) =
    (HsJSONPB.pairs ["date" .= f1, "count" .= f2])

instance HsJSONPB.FromJSONPB HistoFloat where
  parseJSONPB =
    ( HsJSONPB.withObject
        "HistoFloat"
        ( \obj ->
            (Hs.pure HistoFloat) <*> obj .: "date" <*> obj .: "count"
        )
    )

instance HsJSONPB.ToJSON HistoFloat where
  toJSON = HsJSONPB.toAesonValue
  toEncoding = HsJSONPB.toAesonEncoding

instance HsJSONPB.FromJSON HistoFloat where
  parseJSON = HsJSONPB.parseJSONPB

newtype HistoIntStat = HistoIntStat
  { histoIntStatHisto ::
      Hs.Vector Monocle.Protob.Metric.HistoInt
  }
  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)

instance HsProtobuf.Named HistoIntStat where
  nameOf _ = (Hs.fromString "HistoIntStat")

instance HsProtobuf.HasDefault HistoIntStat

instance HsProtobuf.Message HistoIntStat where
  encodeMessage _ HistoIntStat {histoIntStatHisto = histoIntStatHisto} =
    ( Hs.mconcat
        [ ( HsProtobuf.encodeMessageField
              (HsProtobuf.FieldNumber 1)
              ( Hs.coerce @(Hs.Vector Monocle.Protob.Metric.HistoInt)
                  @(HsProtobuf.NestedVec Monocle.Protob.Metric.HistoInt)
                  histoIntStatHisto
              )
          )
        ]
    )
  decodeMessage _ =
    (Hs.pure HistoIntStat)
      <*> ( Hs.coerce
              @(_ (HsProtobuf.NestedVec Monocle.Protob.Metric.HistoInt))
              @(_ (Hs.Vector Monocle.Protob.Metric.HistoInt))
              ( HsProtobuf.at
                  HsProtobuf.decodeMessageField
                  (HsProtobuf.FieldNumber 1)
              )
          )
  dotProto _ =
    [ ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 1)
          ( HsProtobuf.Repeated
              (HsProtobuf.Named (HsProtobuf.Single "HistoInt"))
          )
          (HsProtobuf.Single "histo")
          []
          ""
      )
    ]

instance HsJSONPB.ToJSONPB HistoIntStat where
  toJSONPB (HistoIntStat f1) = (HsJSONPB.object ["histo" .= f1])
  toEncodingPB (HistoIntStat f1) = (HsJSONPB.pairs ["histo" .= f1])

instance HsJSONPB.FromJSONPB HistoIntStat where
  parseJSONPB =
    ( HsJSONPB.withObject
        "HistoIntStat"
        (\obj -> (Hs.pure HistoIntStat) <*> obj .: "histo")
    )

instance HsJSONPB.ToJSON HistoIntStat where
  toJSON = HsJSONPB.toAesonValue
  toEncoding = HsJSONPB.toAesonEncoding

instance HsJSONPB.FromJSON HistoIntStat where
  parseJSON = HsJSONPB.parseJSONPB

newtype HistoFloatStat = HistoFloatStat
  { histoFloatStatHisto ::
      Hs.Vector Monocle.Protob.Metric.HistoFloat
  }
  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)

instance HsProtobuf.Named HistoFloatStat where
  nameOf _ = (Hs.fromString "HistoFloatStat")

instance HsProtobuf.HasDefault HistoFloatStat

instance HsProtobuf.Message HistoFloatStat where
  encodeMessage
    _
    HistoFloatStat {histoFloatStatHisto = histoFloatStatHisto} =
      ( Hs.mconcat
          [ ( HsProtobuf.encodeMessageField
                (HsProtobuf.FieldNumber 1)
                ( Hs.coerce @(Hs.Vector Monocle.Protob.Metric.HistoFloat)
                    @(HsProtobuf.NestedVec Monocle.Protob.Metric.HistoFloat)
                    histoFloatStatHisto
                )
            )
          ]
      )
  decodeMessage _ =
    (Hs.pure HistoFloatStat)
      <*> ( Hs.coerce
              @(_ (HsProtobuf.NestedVec Monocle.Protob.Metric.HistoFloat))
              @(_ (Hs.Vector Monocle.Protob.Metric.HistoFloat))
              ( HsProtobuf.at
                  HsProtobuf.decodeMessageField
                  (HsProtobuf.FieldNumber 1)
              )
          )
  dotProto _ =
    [ ( HsProtobuf.DotProtoField
          (HsProtobuf.FieldNumber 1)
          ( HsProtobuf.Repeated
              (HsProtobuf.Named (HsProtobuf.Single "HistoFloat"))
          )
          (HsProtobuf.Single "histo")
          []
          ""
      )
    ]

instance HsJSONPB.ToJSONPB HistoFloatStat where
  toJSONPB (HistoFloatStat f1) = (HsJSONPB.object ["histo" .= f1])
  toEncodingPB (HistoFloatStat f1) = (HsJSONPB.pairs ["histo" .= f1])

instance HsJSONPB.FromJSONPB HistoFloatStat where
  parseJSONPB =
    ( HsJSONPB.withObject
        "HistoFloatStat"
        (\obj -> (Hs.pure HistoFloatStat) <*> obj .: "histo")
    )

instance HsJSONPB.ToJSON HistoFloatStat where
  toJSON = HsJSONPB.toAesonValue
  toEncoding = HsJSONPB.toAesonEncoding

instance HsJSONPB.FromJSON HistoFloatStat where
  parseJSON = HsJSONPB.parseJSONPB

newtype GetResponse = GetResponse
  { getResponseResult ::
      Hs.Maybe GetResponseResult
  }
  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)

instance HsProtobuf.Named GetResponse where
  nameOf _ = (Hs.fromString "GetResponse")

instance HsProtobuf.HasDefault GetResponse

instance HsProtobuf.Message GetResponse where
  encodeMessage _ GetResponse {getResponseResult = getResponseResult} =
    ( Hs.mconcat
        [ case getResponseResult of
            Hs.Nothing -> Hs.mempty
            Hs.Just x ->
              case x of
                GetResponseResultError y ->
                  ( HsProtobuf.encodeMessageField
                      (HsProtobuf.FieldNumber 1)
                      (HsProtobuf.ForceEmit y)
                  )
                GetResponseResultFloatValue y ->
                  ( HsProtobuf.encodeMessageField
                      (HsProtobuf.FieldNumber 2)
                      (HsProtobuf.ForceEmit y)
                  )
                GetResponseResultIntValue y ->
                  ( HsProtobuf.encodeMessageField
                      (HsProtobuf.FieldNumber 3)
                      (HsProtobuf.ForceEmit y)
                  )
                GetResponseResultHistoIntValue y ->
                  ( HsProtobuf.encodeMessageField
                      (HsProtobuf.FieldNumber 4)
                      ( Hs.coerce @(Hs.Maybe Monocle.Protob.Metric.HistoIntStat)
                          @(HsProtobuf.Nested Monocle.Protob.Metric.HistoIntStat)
                          (Hs.Just y)
                      )
                  )
                GetResponseResultHistoFloatValue y ->
                  ( HsProtobuf.encodeMessageField
                      (HsProtobuf.FieldNumber 5)
                      ( Hs.coerce @(Hs.Maybe Monocle.Protob.Metric.HistoFloatStat)
                          @(HsProtobuf.Nested Monocle.Protob.Metric.HistoFloatStat)
                          (Hs.Just y)
                      )
                  )
        ]
    )
  decodeMessage _ =
    (Hs.pure GetResponse)
      <*> ( HsProtobuf.oneof
              Hs.Nothing
              [ ( (HsProtobuf.FieldNumber 1),
                  (Hs.pure (Hs.Just Hs.. GetResponseResultError))
                    <*> HsProtobuf.decodeMessageField
                ),
                ( (HsProtobuf.FieldNumber 2),
                  (Hs.pure (Hs.Just Hs.. GetResponseResultFloatValue))
                    <*> HsProtobuf.decodeMessageField
                ),
                ( (HsProtobuf.FieldNumber 3),
                  (Hs.pure (Hs.Just Hs.. GetResponseResultIntValue))
                    <*> HsProtobuf.decodeMessageField
                ),
                ( (HsProtobuf.FieldNumber 4),
                  (Hs.pure (Hs.fmap GetResponseResultHistoIntValue))
                    <*> ( Hs.coerce
                            @(_ (HsProtobuf.Nested Monocle.Protob.Metric.HistoIntStat))
                            @(_ (Hs.Maybe Monocle.Protob.Metric.HistoIntStat))
                            HsProtobuf.decodeMessageField
                        )
                ),
                ( (HsProtobuf.FieldNumber 5),
                  (Hs.pure (Hs.fmap GetResponseResultHistoFloatValue))
                    <*> ( Hs.coerce
                            @(_ (HsProtobuf.Nested Monocle.Protob.Metric.HistoFloatStat))
                            @(_ (Hs.Maybe Monocle.Protob.Metric.HistoFloatStat))
                            HsProtobuf.decodeMessageField
                        )
                )
              ]
          )
  dotProto _ = []

instance HsJSONPB.ToJSONPB GetResponse where
  toJSONPB (GetResponse f1_or_f2_or_f3_or_f4_or_f5) =
    ( HsJSONPB.object
        [ ( let encodeResult =
                  ( case f1_or_f2_or_f3_or_f4_or_f5 of
                      Hs.Just (GetResponseResultError f1) -> (HsJSONPB.pair "error" f1)
                      Hs.Just (GetResponseResultFloatValue f2) ->
                        (HsJSONPB.pair "float_value" f2)
                      Hs.Just (GetResponseResultIntValue f3) ->
                        (HsJSONPB.pair "int_value" f3)
                      Hs.Just (GetResponseResultHistoIntValue f4) ->
                        (HsJSONPB.pair "histo_int_value" f4)
                      Hs.Just (GetResponseResultHistoFloatValue f5) ->
                        (HsJSONPB.pair "histo_float_value" f5)
                      Hs.Nothing -> Hs.mempty
                  )
             in \options ->
                  if HsJSONPB.optEmitNamedOneof options
                    then
                      ("result" .= (HsJSONPB.objectOrNull [encodeResult] options))
                        options
                    else encodeResult options
          )
        ]
    )
  toEncodingPB (GetResponse f1_or_f2_or_f3_or_f4_or_f5) =
    ( HsJSONPB.pairs
        [ ( let encodeResult =
                  ( case f1_or_f2_or_f3_or_f4_or_f5 of
                      Hs.Just (GetResponseResultError f1) -> (HsJSONPB.pair "error" f1)
                      Hs.Just (GetResponseResultFloatValue f2) ->
                        (HsJSONPB.pair "float_value" f2)
                      Hs.Just (GetResponseResultIntValue f3) ->
                        (HsJSONPB.pair "int_value" f3)
                      Hs.Just (GetResponseResultHistoIntValue f4) ->
                        (HsJSONPB.pair "histo_int_value" f4)
                      Hs.Just (GetResponseResultHistoFloatValue f5) ->
                        (HsJSONPB.pair "histo_float_value" f5)
                      Hs.Nothing -> Hs.mempty
                  )
             in \options ->
                  if HsJSONPB.optEmitNamedOneof options
                    then ("result" .= (HsJSONPB.pairsOrNull [encodeResult] options)) options
                    else encodeResult options
          )
        ]
    )

instance HsJSONPB.FromJSONPB GetResponse where
  parseJSONPB =
    ( HsJSONPB.withObject
        "GetResponse"
        ( \obj ->
            (Hs.pure GetResponse)
              <*> ( let parseResult parseObj =
                          Hs.msum
                            [ Hs.Just Hs.. GetResponseResultError
                                <$> (HsJSONPB.parseField parseObj "error"),
                              Hs.Just Hs.. GetResponseResultFloatValue
                                <$> (HsJSONPB.parseField parseObj "float_value"),
                              Hs.Just Hs.. GetResponseResultIntValue
                                <$> (HsJSONPB.parseField parseObj "int_value"),
                              Hs.Just Hs.. GetResponseResultHistoIntValue
                                <$> (HsJSONPB.parseField parseObj "histo_int_value"),
                              Hs.Just Hs.. GetResponseResultHistoFloatValue
                                <$> (HsJSONPB.parseField parseObj "histo_float_value"),
                              Hs.pure Hs.Nothing
                            ]
                     in ( (obj .: "result")
                            Hs.>>= (HsJSONPB.withObject "result" parseResult)
                        )
                          <|> (parseResult obj)
                  )
        )
    )

instance HsJSONPB.ToJSON GetResponse where
  toJSON = HsJSONPB.toAesonValue
  toEncoding = HsJSONPB.toAesonEncoding

instance HsJSONPB.FromJSON GetResponse where
  parseJSON = HsJSONPB.parseJSONPB

data GetResponseResult
  = GetResponseResultError Hs.Text
  | GetResponseResultFloatValue Hs.Float
  | GetResponseResultIntValue Hs.Int32
  | GetResponseResultHistoIntValue Monocle.Protob.Metric.HistoIntStat
  | GetResponseResultHistoFloatValue Monocle.Protob.Metric.HistoFloatStat
  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)

instance HsProtobuf.Named GetResponseResult where
  nameOf _ = (Hs.fromString "GetResponseResult")
