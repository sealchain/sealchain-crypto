{-# LANGUAGE OverloadedStrings #-}

module Test.Seal.Crypto
    ( tests
    ) where

import Foundation.Check

import qualified Test.Seal.Crypto.Praos as Praos
import qualified Test.Seal.Crypto.Encoding as Encoding

tests :: Test
tests = Group "Crypto"
    [ Praos.tests
    , Encoding.tests
    ]
