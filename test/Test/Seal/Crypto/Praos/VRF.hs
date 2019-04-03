{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Test.Seal.Crypto.Praos.VRF
    ( tests
    ) where

import Seal.Crypto.Praos.VRF
import Crypto.Random

import Foundation
import Foundation.Check

tests :: Test
tests = Group "VRF"
    [ Property "verify . generate == True" $ \seed kp (bytes :: String) ->
        let drg = drgNewTest seed
            (out, proof) = fst $ withDRG drg $ generate bytes (toSecretKey kp)
         in verify bytes (toPublicKey kp) (out, proof)
    ]
