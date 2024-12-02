import UIKit

/*
 
 **Project:** (with Inheritance and Method Overriding)

    Details

        - Create base class Computer with common properties and methods.

            - Subclasses Laptop, Desktop, and Server that inherit from Computer and add unique properties and methods.
            - A function to display detailed specifications of each computer type.
 
        - Create the Base Class (Computer)

            - Add the following properties:
            - brand: String
            - processor: String
            - ram: Int (amount of RAM in GB)
            - Create an initializer for these properties.
            - Add a method displaySpecs() that prints the values of these properties.
 
        - Create Subclasses:

        - Laptop:

            - Add an additional property isTouchscreen (a Bool to indicate if the laptop has a touchscreen).
            - Override the displaySpecs() method to include this property.
        - Desktop:

            - Add an additional property hasDedicatedGPU (a Bool to indicate if the desktop has a dedicated GPU).

            - Override the displaySpecs() method to include this property.

        - Server:

            - Add an additional property rackUnits (an Int to specify the server's size in rack units).

            - Override the displaySpecs() method to include this property.

        - Write some test code:

            - Create one object for each subclass (Laptop, Desktop, and Server).
            - Assign appropriate values to their properties.
            - Call the displaySpecs() method for each object to print their specifications.
 
 */

// base Class
class Computer {
    private var brand: String
    private var processor: String
    private var ram: Int
    
    init(brand: String, processor: String, ram: Int) {
        self.brand = brand
        self.processor = processor
        self.ram = ram
    }
    
    func displaySpecs() {
        print("Brand: \(brand), Processor: \(processor), Ram: \(ram)GB")
        
    }
}

// Subclass for Laptop
class Laptop: Computer {
    private var isTouchscreen: Bool
    init(brand: String, processor: String, ram: Int, isTouchscreen: Bool) {
        self.isTouchscreen = isTouchscreen
        super.init(brand:brand, processor:processor, ram:ram)
    }
    
    override func displaySpecs() {
        super.displaySpecs()
        print("is-Touchscreen: \(isTouchscreen)")
    }
    }

// Subclass for Desktop
class Desktop: Computer {
    private var hasDedicatedGPU: Bool
    init(brand: String, processor: String, ram: Int, hasDedicatedGPU: Bool) {
        self.hasDedicatedGPU = hasDedicatedGPU
        super.init(brand:brand, processor:processor, ram:ram)
    }
    override func displaySpecs() {
        super.displaySpecs()
        print("is-hasDedicatedGPU: \(hasDedicatedGPU)")
    }
}

    // Subclass for Server
class Server: Computer {
    private var rackUnits: Int
    init(brand: String, processor: String, ram: Int, rackUnits: Int) {
        self.rackUnits = rackUnits
        super.init(brand:brand, processor:processor, ram:ram)
    }
    override func displaySpecs() {
        super.displaySpecs()
        print("rackUnit: \(rackUnits)")
    }
    }

// Text Code
// create objects for each subclass
let laptop = Laptop (brand:"Apple", processor:"M4", ram:64, isTouchscreen:false)
let desktop = Desktop (brand:"Dell", processor:"Intel i7", ram:32, hasDedicatedGPU:true)
let server = Server (brand:"HP", processor:"Xeon", ram:128, rackUnits:4)

// Display specifications
laptop.displaySpecs()
desktop.displaySpecs()
server.displaySpecs()

