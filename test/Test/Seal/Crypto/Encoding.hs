{-# LANGUAGE OverloadedStrings #-}

module Test.Seal.Crypto.Encoding
    ( tests
    ) where

import Foundation.Check

import qualified Test.Seal.Crypto.Encoding.Seed as Seed

tests :: Test
tests = Group "Encoding"
    [ Seed.tests
    ]
