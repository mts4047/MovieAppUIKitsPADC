//
//  Basic.swift
//  Starter
//
//  Created by Myo Thandar soe on 12/03/2023.
//

import Foundation

var colorList = ["Orange", "Yellow", "Red"]
var regionList : Set = ["Yangon", "Mandalay", "Naypyitaw"]
var townshipList : [String:[String]] = ["Yangon" : ["Kamaryut", "SanChaung", "Insein"]]

var doOnNext:((String)->String)={_ ->String in ""}

func main() {
    var name = "MTS"
    name = "MS"
    
    colorList.append("Blue")
    
    let townships = townshipList["Yangon"]
    debugPrint(townships)
    
    for color in colorList{
        debugPrint(color)
    }
    
    var indexForWhile = 0
    while indexForWhile < 3 {
        debugPrint(colorList[indexForWhile])
        indexForWhile += 1
    }
    
    var indexForRepeatWhile = 0
    repeat{
        debugPrint(indexForRepeatWhile)
        indexForRepeatWhile += 1
    } while indexForRepeatWhile < 3
    
    
    doOnNext = { name -> String in
        debugPrint("Hello \(name)")
        return "Hello \(name)"
    }
    
    
    decrease(doDecrease: {
        
    }, total: 10)
    
}

func increment(amount:Int)->()->Int{
    func doProcess()->Int{
        return amount
    }
    return doProcess
}

func decrease(doDecrease:()->Void,total:Int)->Void{
    debugPrint("decrease")
}


