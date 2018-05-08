import Foundation

class Match {
    var date: String?
    var stadium: Stadium
    var group: String
    var countryA: Country
    var countryB: Country
    var resultCountryA: String?
    var resultCountryB : String?
    var eventA: [Event]?
    var eventB: [Event]?
    
    //Match without results
    init (date: String, group:String,stadium: Stadium, countryA:Country, countryB: Country) {
        self.date = date
        self.stadium = stadium
        self.group = group
        self.countryA = countryA
        self.countryB = countryB
    }
    
    //Match without results and events
    init (date: String, group:String,stadium: Stadium, countryA:Country, countryB: Country, eventA: [Event], eventB: [Event]) {
        self.date = date
        self.stadium = stadium
        self.group = group
        self.countryA = countryA
        self.countryB = countryB
        self.eventA = eventA
        self.eventB = eventB
        
    }
    
    //Match with results and events
    init (date: String, group:String,stadium: Stadium, countryA:Country, countryB: Country, eventA: [Event],eventB:[Event], resultCountryA: String, resultCountryB: String) {
        self.date = date
        self.stadium = stadium
        self.group = group
        self.countryA = countryA
        self.countryB = countryB
        self.eventA = eventA
        self.eventB = eventB
        self.resultCountryA = resultCountryA
        self.resultCountryB = resultCountryB
    }
}
