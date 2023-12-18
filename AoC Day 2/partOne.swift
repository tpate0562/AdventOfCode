//
//  main.swift
//  AoC Day 2
//
//  Created by Tejas Patel on 12/2/23.
//

import Foundation
var count: Int = 0
func printLine(i:Int64) -> String {
    let filename = "/Users/tejaspatel/Desktop/Programming Projects/AoC Day 2/AoC Day 2/games.txt"
    do {
        let contents = try String(contentsOfFile: filename)
        let lines = contents.split(separator: "\n")
        return String(lines[Int(i)])
        
    } catch {
        return "An error occurred while reading the file."
    }
}
//find impossible games
for i in 0...99 {
    let x: String = (printLine(i: Int64(i)))
   
    if (x.contains("13 red") || x.contains("14 red") || x.contains("15 red") || x.contains("16 red") || x.contains("17 red") || x.contains("18 red") || x.contains("19 red") || x.contains("20 red") || x.contains("14 green") || x.contains("15 green") || x.contains("16 green") || x.contains("17 green") || x.contains("18 green") || x.contains("19 green") || x.contains("20 green") || x.contains("15 blue") || x.contains("16 blue") || x.contains("17 blue") || x.contains("18 blue") || x.contains("19 blue") || x.contains("20 blue")) {print("false line");print(i + 1)}
        else {count += (i + 1)}
    
}
print(count)
