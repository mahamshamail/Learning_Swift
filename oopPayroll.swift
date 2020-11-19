import Foundation
struct Emp{
    var name : String
    var department : String?
    var hoursPerWeek : Int = 38
    var hourlywage : Int = 15
    
    init(name: String, department: String) {
        self.name = name
        self.department = department

    }
    init(name: String, department : String, hoursPerWeek : Int , hourlywage : Int ) {
        self.name = name
        self.department = department
        self.hourlywage = hourlywage
        self.hoursPerWeek = hoursPerWeek
    }
    //computed property instead of a func
    var needsOverTime: Bool {
        get{
            if(self.hoursPerWeek>40){
                return true
            }
            else{
                return false
            }
        }
    }

}
