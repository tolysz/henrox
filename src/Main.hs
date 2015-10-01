{-# LAnguage OverloadedStrings, QuasiQuotes #-}
module Main where

import Data.String.QM
import Data.String

mobapi = "https://m.tenrox.net/2014R3/tenterprise/api/"
org = "OpenBet"

wsdlUrl :: String -> String
wsdlUrl serv = [qm|https://${org}.tenrox.net/TWebService/${serv}.svc?wsdl|]
-- https://openbet.tenrox.net/TWebService/Timesheets.svc
-- loginUrl org user pass =
main = do
  org = "OpenBet"
  putStrLn [qm|https://m.tenrox.net/default.aspx?v=3.0.1&device=ios&organization=${org}|]
  putStrLn $ wsdlUrl "Timesheets"
