import Foundation
var first = 0, second = 0, count = 0
var x = ""
let filename = "/Users/tejaspatel/Desktop/Programming Projects/AoC Day 1/AoC Day 1/input.txt"
let contents = try String(contentsOfFile: filename)
var lines = contents.split(separator: "\n").map(String.init)
let numbers = [["1e", "2o", "3e", "4r", "5e", "6x", "7n", "8t", "9e"], ["one" ,"two", "three", "four", "five", "six", "seven", "eight", "nine"]]
for i in 0..<lines.count  {
    x = ""
    var chars = lines[i].split(separator: "")
    for i in 0..<chars.count{
        x += String(chars[i])
        for ii in 0..<numbers[1].count {
                let numberWord = numbers[1][ii] 
                let numberValue = String(numbers[0][ii])  // Convert Int to String
                x = x.replacingOccurrences(of: numberWord, with: numberValue)
        }
    }
    lines[i] = x
    for char in lines[i]{
        if char.isNumber{
            first = Int(String(char))!
            break
        }
    }
    for char in lines[i].reversed(){
        if char.isNumber{
            second = Int(String(char))!
            break
        }
    }
    count += (10 * first + second)
    print((10 * first + second))
}
print(count)
