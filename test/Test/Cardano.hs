{-# LANGUAGE OverloadedStrings #-}

module Test.Seal
    ( tests
    ) where

import Foundation.Check

import qualified Test.Seal.Crypto as Crypto

tests :: Test
tests = Group "Seal"
    [ Crypto.tests
    ]
