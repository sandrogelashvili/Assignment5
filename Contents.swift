import UIKit

//1. დაწერეთ ფუნქცია რომელიც პარამეტრად მიიღებს String-ს და დააბრუნებს ბულიანს. ფუნქციამ უნდა შეამოწმოს მიღებული სტრინგი სარკისებურია თუ არა (სიტყვა ან წინადადება რომელიც იკითხება ერთნაირად როგორც თავიდან, ისე ბოლოდან მაგ: “ანა”, “აირევი ივერია”, “მადამ”)


func miror (string1: String) -> Bool {
    return string1 == String (string1.reversed())
    }
print(miror(string1: "აირევი ივერია"))

//2. დაწერეთ ფუნქცია რომელიც გადაცემულ რიცხვების array-ს ააკვარდატებს, დაპრინტავს და დააბრუნებს მნიშვნელობას.

func squareArray(_ numbers: [Int]) -> [Int] {
    var squaredArray = [Int]()
    
    for number in numbers {
        let squaredValue = number * number
        squaredArray.append(squaredValue)
        print("\(number) * \(number) = \(squaredValue)")
    }
    return squaredArray
}

let numbers1 = [1, 2, 3, 4, 5]
let squaredNumbers = squareArray(numbers1)

//3. დაწერეთ Closure რომელიც გაფილტრავს ლუწ რიცხვებს Int-ების Array-დან

let nums1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

let evenNumbers = nums1.filter { $0 % 2 == 0 }

print("Even numbers: \(evenNumbers)")

//4. დაწერეთ ფუნქცია, რომელიც პარამეტრად იღებს Int-ების მასივს. Escaping closure-ის მეშვეობით დაბეჭდეთ მიწოდებული მასივის ჯამი 5 წამის შემდეგ. დარწმუნდით რომ closure არის escaping და გამოიძახეთ ის მას შემდეგ რაც ფუნქცია დაბრუნდება

func printSumAfterDelay(_ numbers: [Int], completion: @escaping (Int) -> Void) {
    
    let sumClosure = {
        let sum = numbers.reduce(0, +)
        completion(sum)
    }
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
        sumClosure()
    }
}

let numbers = [2, 3, 5, 7, 10]

printSumAfterDelay(numbers) { sum in
    print("Sum after 5 seconds: \(sum)")
}
//5. შექმენით  კონტაქტების Dict სადაც key არის სახელი და value ტელეფონის ნომერი, დაამატეთ, დაბეჭდეთ/მოძებნეთ და წაშალეთ კონტაქტი

var contacts = [
    "sandro": "568xxxxxx",
    "daviti": "578xxxxxx",
    "vasili": "555xxxxxx",
    "giorgi-beqa": "551xxxxxx",
]
contacts["my dog mushu"] = "511xxxxxx"

print(contacts ["my dog mushu"] ?? "Contact not found")

contacts.removeValue(forKey: "my dog mushu")

print(contacts)

//6. დაწერეთ ფუნქცია რომელიც პარამეტრად იღებს [String: Int] ტიპის Dictionary-ს და დააბრუნებს ანბანურად დალაგებულ dictionary-ს key ელემენტების მასივს

func sort (dict: [String:Int]) -> [String] {
    let sortedkeys = dict.keys.sorted()
    return sortedkeys
}
let sortTheDict = sort(dict: [
    "vashli": 5,
    "msxali": 2,
    "banani": 3])
print(sortTheDict)

//7. შექმენით Double-ების მასივი, შეავსეთ ის თქვენთვის სასურველი რიცხვებით.  loop-ის გამოყენებით იპოვეთ ყველაზე დიდი რიცხვი ამ მასივში და დაბეჭდეთ

var doubles = [2.24, 3.4, 5.1, 2.25]
var max = doubles [0]

for num in 1..<doubles.count {
    if doubles[num] > max {
        max = doubles[num]
    }
}
print(max)
