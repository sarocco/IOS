import Foundation

class Match {
    var date: String
    var stadium: Stadium
    var group: String
    var countryA: Country
    var countryB: Country
    var resultCountryA: Int?
    var resultCountryB : Int?
    
    //Match without results
    init (date: String, group:String,stadium: Stadium, countryA:Country, countryB: Country) {
        self.date = date
        self.stadium = stadium
        self.group = group
        self.countryA = countryA
        self.countryB = countryB
    }
    
    //Match with results
    init (date: String, group:String,stadium: Stadium, countryA:Country, countryB: Country, resultCountryA: Int, resultCountryB: Int) {
        self.date = date
        self.stadium = stadium
        self.group = group
        self.countryA = countryA
        self.countryB = countryB
        self.resultCountryA = resultCountryA
        self.resultCountryB = resultCountryB
    }
}
