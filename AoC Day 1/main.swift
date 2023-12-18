import Foundation
var first = 0, second = 0, count = 0
let filename = "/Users/tejaspatel/Desktop/Programming Projects/AoC Day 1/AoC Day 1/input.txt"
let contents = try String(contentsOfFile: filename)
let lines = contents.split(separator: "\n")
for i in 0...999 {
    for char in lines[i]{
        if char.isNumber{
            second = Int(String(char))!
        }
    }
    for char in lines[i].reversed(){
        if char.isNumber{
            first = Int(String(char))!
        }
    }
    count += (10 * first + second)
}
print(count)
