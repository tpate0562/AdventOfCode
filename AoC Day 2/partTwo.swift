//
//  partTwo.swift
//  AoC Day 2
//
//  Created by Tejas Patel on 12/17/23.
//

import Foundation
var count: Int = 0
class maximums{
    var green: Int = 0
    var blue: Int = 0
    var red: Int = 0
}
var max = maximums()
let filename = "/Users/tejaspatel/Desktop/Programming Projects/AoC Day 2/AoC Day 2/games.txt"
let contents = try String(contentsOfFile: filename)
var lines = contents.split(separator: "\n").map(String.init)
for line in lines {
    let elements = line.split(separator: " ").map(String.init)
    var numbers = [Int]()
    var colors = [String]()
    for element in elements {
       if let number = Int(element) {
           numbers.append(number)
       } else {
           colors.append(element)
       }
    }
    colors.remove(at: 0)
    colors.remove(at: 0)
    for i in colors.indices {
        colors[i] = colors[i].replacingOccurrences(of: ",", with: "")
        colors[i] = colors[i].replacingOccurrences(of: ";", with: "")
    }
    for i in colors.indices {
        if colors[i] == "green"{
            if numbers[i] > max.green {max.green = numbers[i]}
        }
        if colors[i] == "blue"{
            if numbers[i] > max.blue {max.blue = numbers[i]}
        }
        if colors[i] == "red"{
            if numbers[i] > max.red {max.red = numbers[i]}
        }
    }
    print (max.red * max.blue * max.green)
    count += (max.red * max.blue * max.green)
    print(numbers)
    print(colors)
    max.red = 0
    max.green = 0
    max.blue = 0
}
print(count)
