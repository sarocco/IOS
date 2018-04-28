import Foundation
class Match {
    var date: NSDate
    var stadium: Stadium
    var group: String
    var countryA: Country
    var countryB: Country
    var result: [Int]
    
    init (date: NSDate, group:String,stadium: Stadium,  countryA:Country, countryB: Country, result: [Int] ){
        self.date = date
        self.stadium = stadium
        self.group = group
        self.countryA = countryA
        self.countryB = countryB
        self.result = result
    }
}
