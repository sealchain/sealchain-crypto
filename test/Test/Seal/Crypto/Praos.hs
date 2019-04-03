{-# LANGUAGE OverloadedStrings #-}

module Test.Seal.Crypto.Praos
    ( tests
    ) where

import Foundation.Check

import qualified Test.Seal.Crypto.Praos.VRF as VRF

tests :: Test
tests = Group "Praos"
    [ VRF.tests
    ]
