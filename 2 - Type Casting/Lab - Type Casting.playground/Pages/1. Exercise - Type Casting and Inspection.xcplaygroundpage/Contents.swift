/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var myStuff : [Any] = [5,20.17, "Cookies", true, true, 708,78.1, "Parrots", "Blanket"]
print(myStuff)

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 
for item in myStuff{
    //optionally bind an integer calling it number
    if let number = item as? Int{
        print("The integer has a value of \(number)")
    }
    //else optionally bind a double calling it number
    else if let number = item as? Double{
        print("The double has a value of \(number)")
    }
    //else optionally bind a string calling it word
    else if let word = item as? String{
        print("The word is: \(word)")
    }
    //else optionally bind a string calling it word
    else if let boolean  = item as? Bool{
        print("The boolean is: \(boolean)")
    }
}
//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var myLookup : [String : Any] = ["Age": 18, "Name" : "Sammy", "Cost" : 29.95, "True?" : false, "Ask Marc" : "I was trying to figure out why I have these errors", "Okay" : -0, "Are you sure" : true]
print(myLookup)

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total : Double = 0.0
for value in myLookup.values{
    //double add the value
    if let number = value as? Double{
        total += number
    }
    //int add the value
    else if let number = value as? Int{
        total += Double(number)
    }
    //String Add 1
    else if let _ = value as? String {
        total += Double(1)
    }
    //Boolean add 2 if true add -3  if false
    else if let bool = value as? Bool{
        if bool {
            total += 2
        }else{
            total -= 3
    
        }
    }
}

print(total)

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0

for value in myLookup.values{
    //ints
    if let number = value as? Int{
        total2 += Double(number)
    }
    //Doubles
    else if let number = value as? Double{
        total2 += number
    }
    //Strings
    else if let string = value as? String{
        if let validNumber = Double(string){
            total2 += validNumber
        }
    }
}

print(total2)

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
