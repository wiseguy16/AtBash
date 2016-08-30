//
//  CryptoLetters.swift
//  AtBash
//
//  Created by Gregory Weiss on 8/29/16.
//  Copyright © 2016 Gregory Weiss. All rights reserved.
//

import Foundation

class CryptoLetters
{
    var alphabetDict = ["a" : "z",
                        "b" : "y",
                        "c" : "x",
                        "d": "w",
                        "e": "v",
                        "f" : "u",
                        "g" : "t",
                        "h": "s",
                        "i" : "r",
                        "j" : "q",
                        "k" : "p",
                        "l": "o",
                        "m" : "n",
                        "n" : "m",
                        "o": "l",
                        "p" : "k",
                        "q" : "j",
                        "r" : "i",
                        "s" : "h",
                        "t" : "g",
                        "u" : "f",
                        "v" : "e",
                        "w" : "d",
                        "x" : "c",
                        "y" : "b",
                        "z" : "a",
                        "A" : "Z",
                        "B" : "Y",
                        "C" : "X",
                        "D": "W",
                        "E": "V",
                        "F" : "U",
                        "G" : "T",
                        "H": "S",
                        "I" : "R",
                        "J" : "Q",
                        "K" : "P",
                        "L": "O",
                        "M" : "N",
                        "N" : "M",
                        "O": "L",
                        "P" : "K",
                        "Q" : "J",
                        "R" : "I",
                        "S" : "H",
                        "T" : "G",
                        "U" : "F",
                        "V" : "E",
                        "W" : "D",
                        "X" : "C",
                        "Y" : "B",
                        "Z" : "A"
                        ]
    
    
    
    func encodeText(wordToEncode: String) -> String
    {
        var resultToEncode = [String]()
        var arrayToEncode = Array(wordToEncode.characters)
        
        for ndex in 0..<arrayToEncode.count
        {
            let chr = "\(arrayToEncode[ndex])"
            if (!(chr >= "a" && chr <= "z") && !(chr >= "A" && chr <= "Z") ) {
              resultToEncode.append(chr)
            }
            else
            {
            let charToEncode = alphabetDict["\(arrayToEncode[ndex])"]
            resultToEncode.append(charToEncode!)
            }
        }
        
        
        let newStringEncoded = resultToEncode.joinWithSeparator("")
        return newStringEncoded

        
    }
    
    func decodeText(wordToDecode: String) -> String
    {
        var resultToDecode = [String]()
        var arrayToDecode = Array(wordToDecode.characters)
        
        for ndex in 0..<arrayToDecode.count
        {
            let chr = "\(arrayToDecode[ndex])"
            if (!(chr >= "a" && chr <= "z") && !(chr >= "A" && chr <= "Z") ) {
                resultToDecode.append(chr)
            }
            else
            {
            let charToDecode = alphabetDict["\(arrayToDecode[ndex])"]
            resultToDecode.append(charToDecode!)
            }
        }
        
        let newStringDecoded = resultToDecode.joinWithSeparator("")
        return newStringDecoded
        
    }
    
    

}
