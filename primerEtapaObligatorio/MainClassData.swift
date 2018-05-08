//
//  MainClassData.swift
//  primerEtapaObligatorio
//
//  Created by Carolina Rocco on 6/5/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

class MainClassData {
    
    static func loadData() -> [Match] {
        
        
        
        let uruPlayers = [Player(name: "Fernando Muslera",nameTeam: "Galatasaray",number: "1"),
                          Player(name: "Emiliano Velázquez",nameTeam: "Rayo Vallecano de Madrid",number: "2"),
                          Player(name: "Diego Godín",nameTeam: "Atlético de Madrid",number: "3"),
                          Player(name: "Martín Campaña",nameTeam: "Rayo Vallecano de Madrid",number: "4"),
                          Player(name: "Mathías Corujo",nameTeam: "Peñarol",number: "5"),
                          Player(name: "Alejandro Silva",nameTeam: "Montreal Impact",number: "6"),
                          Player(name: "Gastón Ramirez",nameTeam: "Sampdoria",number: "7"),
                          Player(name: "Edinson Cavani",nameTeam: "PSG",number: "8"),
                          Player(name: "Jonathan Rodriguez",nameTeam: "Club Santos Laguna",number: "9"),
                          Player(name: "Luis Suarez",nameTeam: "Barcelona",number: "10"),
                          Player(name: "Walter Gargano",nameTeam: "Peñarol",number: "11")
        ];
        
        
        
        let rusPlayers = [Player(name: "I. Akinfeev",nameTeam: "Galatasaray",number: "1"),
                          Player(name: "V. Gabulov",nameTeam: "Rayo Vallecano de Madrid",number: "2"),
                          Player(name: "A. Lunev",nameTeam: "Atlético de Madrid",number: "3"),
                          Player(name: "A. Selikhov",nameTeam: "Rayo Vallecano de Madrid",number: "4"),
                          Player(name: "V. Granat",nameTeam: "Peñarol",number: "5"),
                          Player(name: "F. Kudryashov",nameTeam: "Montreal Impact",number: "6"),
                          Player(name: "I. Kutepov",nameTeam: "Sampdoria",number: "7"),
                          Player(name: "R. Neustädter",nameTeam: "PSG",number: "8"),
                          Player(name: "K. Rausch",nameTeam: "Club Santos Laguna",number: "9"),
                          Player(name: "A. Semenov",nameTeam: "Barcelona",number: "10"),
                          Player(name: "I. Smolnikov",nameTeam: "Peñarol",number: "11")
            
        ];
        
        
        let araPlayers = [Player(name: "I. Akinfeev",nameTeam: "Galatasaray",number: "1"),
                          Player(name: "V. Gabulov",nameTeam: "Rayo Vallecano de Madrid",number: "2"),
                          Player(name: "A. Lunev",nameTeam: "Atlético de Madrid",number: "3"),
                          Player(name: "A. Selikhov",nameTeam: "Rayo Vallecano de Madrid",number: "4"),
                          Player(name: "V. Granat",nameTeam: "Peñarol",number: "5"),
                          Player(name: "F. Kudryashov",nameTeam: "Montreal Impact",number: "6"),
                          Player(name: "I. Kutepov",nameTeam: "Sampdoria",number: "7"),
                          Player(name: "R. Neustädter",nameTeam: "PSG",number: "8"),
                          Player(name: "K. Rausch",nameTeam: "Club Santos Laguna",number: "9"),
                          Player(name: "A. Semenov",nameTeam: "Barcelona",number: "10"),
                          Player(name: "I. Smolnikov",nameTeam: "Peñarol",number: "11")
        ];
        
        
        
        let egiPlayers = [Player(name: "I. Akinfeev",nameTeam: "Galatasaray",number: "1"),
                          Player(name: "V. Gabulov",nameTeam: "Rayo Vallecano de Madrid",number: "2"),
                          Player(name: "A. Lunev",nameTeam: "Atlético de Madrid",number: "3"),
                          Player(name: "A. Selikhov",nameTeam: "Rayo Vallecano de Madrid",number: "4"),
                          Player(name: "V. Granat",nameTeam: "Peñarol",number: "5"),
                          Player(name: "F. Kudryashov",nameTeam: "Montreal Impact",number: "6"),
                          Player(name: "I. Kutepov",nameTeam: "Sampdoria",number: "7"),
                          Player(name: "R. Neustädter",nameTeam: "PSG",number: "8"),
                          Player(name: "K. Rausch",nameTeam: "Club Santos Laguna",number: "9"),
                          Player(name: "A. Semenov",nameTeam: "Barcelona",number: "10"),
                          Player(name: "I. Smolnikov",nameTeam: "Peñarol",number: "11")
        ];
        
        
        
        let uruguay = Country(name:"Uruguay",players: uruPlayers, dt: DT(name: "Oscar Tabarez",identifier: "DT"), shield:"Uruguay", abbreviation: "URU", nextMatches: []);
        
        
        let rusia = Country(name:"Rusia",players: rusPlayers, dt: DT(name: "S. Cherchesov",identifier: "DT"), shield:"Rusia", abbreviation: "RUS", nextMatches: []);
        
        
        
        let arabia = Country(name:"Arabia Saudi",players: araPlayers, dt: DT(name: "Juan Antonio Pizzi",identifier: "DT"), shield:"Arabia Saudi", abbreviation: "ARA", nextMatches: []);
        
        
        
        let egipto = Country(name:"Egipto",players: egiPlayers, dt: DT(name: "Héctor Cúper",identifier: "DT"), shield:"Egipto", abbreviation: "EGI", nextMatches: []);
        
        
        
        let eventsUru = [Event(icon: "⚽️",player: "Luis Suarez",time: "3'"),Event(icon: "⚽️",player: "Diego Godín",time: "20'"), Event(icon: "🛑",player: "Martín Campaña",time: "20'"), Event(icon: "🔶",player: "Diego Godín",time: "28'")]
        
        let eventsRus = [Event(icon: "🛑",player: "I. Akinfeev",time: "20'")]
        
        
        
        var firstMatch = Match (date:"02 de Mayo 2018 10:04", group:"Grupo A", stadium: Stadium(name:"Samara Arena", stadiumImage: "Samara Arena"), countryA: uruguay, countryB: rusia, eventA: eventsUru, eventB:eventsRus, resultCountryA: "2", resultCountryB: "0")
        
        
        
        var secondMatch = Match (date:"06 de Mayo 2018 10:04", group:"Grupo A", stadium: Stadium(name:"Samara Arena", stadiumImage: "Samara Arena"), countryA: uruguay, countryB: egipto, eventA: eventsUru, eventB:eventsRus)
        
        
        
        var thirdMatch = Match (date:"20 de Mayo 2018 18:04", group:"Grupo A", stadium: Stadium(name:"Samara Arena", stadiumImage: "Samara Arena"), countryA: arabia, countryB: egipto)
    
        uruguay.nextMatches.append(secondMatch)
        
        let matches = [firstMatch, secondMatch, thirdMatch]
        
        
        
        return matches
        
        
        
    }
    

}
