/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer{
    var ram : Int
    var yearManufactured : Int
    init?(ram: Int, year : Int){
        //Must have more than 0 ram
        if(ram <= 0){
            return nil
        }
        //Valid Manufactured date between 1970 and 2020
        if( year <= 1970 || year >= 2020){
            return nil
        }
        self.ram = ram
        self.yearManufactured = year
    }
}

//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
var computer1 : Computer? = Computer(ram: 16, year: 1970)
if let computer = computer1{
    print(computer.ram)
    print(computer.yearManufactured)
}
var computer2 : Computer? = Computer(ram: 8, year: 1971)
if let computer = computer2{
    print(computer.ram)
    print(computer.yearManufactured)
}

/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */
