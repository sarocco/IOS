//
//  MainClassData.swift
//  primerEtapaObligatorio
//
//  Created by Carolina Rocco on 6/5/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

class MainClassData {
    
    static func loadData() -> [Match] {
        
        //Players
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
        
        let egiPlayers = [Player(name: "Mohamed Tozad",nameTeam: "Ismaily",number: "1"),
                          Player(name: "VAli Gabr",nameTeam: "Zamalek",number: "2"),
                          Player(name: "Ahmed El Mohamady",nameTeam: "Aston Villa",number: "3"),
                          Player(name: "Omar Gaber",nameTeam: "Los Angeles",number: "4"),
                          Player(name: "Rami Rabia",nameTeam: "Al-Ahaly",number: "5"),
                          Player(name: "Sam Morsy",nameTeam: "Wigan Athletic",number: "6"),
                          Player(name: "Ahmed Fathy",nameTeam: "Al-Ahly",number: "7"),
                          Player(name: "Tarek Hamed",nameTeam: "Zamalek",number: "8"),
                          Player(name: "hmed Hassan Mahgoub",nameTeam: "Sporting Braga",number: "9"),
                          Player(name: "Shikabala",nameTeam: "Al-Raed",number: "10"),
                          Player(name: "Mahmoud Kahraba",nameTeam: "Al-Ittihad",number: "11")
        ];
        
        let braPlayers  = [Player(name: "Norberto Murara",nameTeam: "Brasil",number: "1"),
                           Player(name: "Danilo Luiz",nameTeam: "Brasil",number: "2"),
                           Player(name: "Luan Vieira",nameTeam: "Flamenco",number: "3"),
                           Player(name: "Roberto Firmino",nameTeam: "Liverpoll FC",number: "4"),
                           Player(name: "Mário Figueira ",nameTeam: "PFC",number: "5"),
                           Player(name: "Wesley Lopes Beltrame",nameTeam: "América Futebol Clube",number: "6"),
                           Player(name: "Diego Tardelli ",nameTeam: "Superliga de China",number: "7"),
                           Player(name: "Giuliano Victor de Paula",nameTeam: "Superliga Turca",number: "8"),
                           Player(name: "Douglas Costa",nameTeam: "Juventus de Turin",number: "9"),
                           Player(name: "ALucas Marques ",nameTeam: "Esportes Clube Victoria",number: "10"),
                           Player(name: "Marcelo Grohe",nameTeam: " Grêmio Foot-Ball Porto Alegrense",number: "11")
        ];
        
        //Countries
        let uruguay = Country(name:"Uruguay",players: uruPlayers, dt: DT(name: "Oscar Tabarez",identifier: "DT"), shield:"Uruguay", abbreviation: "URU", nextMatches: []);
        
        let rusia = Country(name:"Rusia",players: rusPlayers, dt: DT(name: "S. Cherchesov",identifier: "DT"), shield:"Rusia", abbreviation: "RUS", nextMatches: []);
        
        let arabia = Country(name:"Arabia Saudi",players: araPlayers, dt: DT(name: "Juan Antonio Pizzi",identifier: "DT"), shield:"Arabia Saudi", abbreviation: "ARA", nextMatches: []);
        
        let egipto = Country(name:"Egipto",players: egiPlayers, dt: DT(name: "Héctor Cúper",identifier: "DT"), shield:"Egipto", abbreviation: "EGI", nextMatches: []);
        
        let brasil = Country(name:"Brasil",players: braPlayers, dt: DT(name: "Tite",identifier: "DT"), shield:"Brasil", abbreviation: "BRA", nextMatches: []);
        
        //Eventos
        let eventsUru = [Event(icon: "⚽️",player: "Luis Suarez",time: 3),Event(icon: "⚽️",player: "Diego Godín",time: 20), Event(icon: "🛑",player: "Martín Campaña",time: 25), Event(icon: "🔶",player: "Diego Godín",time: 28)]
        
        let eventsRus = [Event(icon: "🛑",player: "I. Akinfeev",time: 2), Event(icon: "🛑",player: "R.Neustädter",time: 20), Event(icon: "🔶",player: "I. Selikhov",time: 29)]
        
        let eventsEgi = [Event(icon: "⚽️",player: "Tarek Hamed",time: 48),Event(icon: "🛑",player: "Mahmoud Kahraba",time: 3)]
        
        //Matches
        let firstMatch = Match (date:"02 de Mayo 2018 10:00", group:"Grupo A",  stadium: Stadium(name:"Estadio Central", stadiumImage: "Estadio Central"), countryA: uruguay, countryB: rusia, eventA: eventsUru, eventB:eventsRus, resultCountryA: "2", resultCountryB: "0")
        
        let secondMatch = Match (date:"08 de Mayo 2018 10:00", group:"Grupo A", stadium: Stadium(name:"Samara Arena", stadiumImage: "Samara Arena"), countryA: uruguay, countryB: egipto, eventA: eventsUru, eventB: eventsEgi)
        
        let thirdMatch = Match (date:"20 de Mayo 2018 18:00", group:"Grupo A",stadium: Stadium(name:"Volgogrado Arena", stadiumImage: "Volgogrado Arena"), countryA: arabia, countryB: egipto, eventA:[], eventB:[])
        
        let fourthMatch = Match (date:"30 de Mayo 2018 22:00", group:"Grupo A", stadium: Stadium(name:"Estadio Central", stadiumImage: "Estadio Central"), countryA: uruguay, countryB: arabia, eventA:[], eventB:[])
        
        let fifthMatch = Match (date:"30 de Mayo 2018 22:00", group:"Grupo B", stadium: Stadium(name:"Volgogrado Arena", stadiumImage: "Volgogrado Arena"), countryA: rusia, countryB: arabia, eventA:[], eventB:[])
    
        let sixthMatch = Match (date:"22 de Junio 2018 20:00", group:"Grupo B",  stadium: Stadium(name:"Samara Arena", stadiumImage: "Samara Arena"), countryA: brasil, countryB: arabia, eventA:[], eventB:[])
        
        
        //All Matches
        let matches = [firstMatch, secondMatch, thirdMatch, fourthMatch, fifthMatch, sixthMatch]
        
        for match in matches{
            if uruguay.name == match.countryA.name || uruguay.name == match.countryB.name {
                uruguay.nextMatches.append(match)
            } else if rusia.name == match.countryA.name || rusia.name == match.countryB.name {
                rusia.nextMatches.append(match)
            } else if arabia.name == match.countryA.name || arabia.name == match.countryB.name {
            arabia.nextMatches.append(match)
            } else if egipto.name == match.countryA.name || egipto.name == match.countryB.name {
                egipto.nextMatches.append(match)
            }
            
        }
        
        return matches
    }
}
