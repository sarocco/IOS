
class Country {
    var name: String
    var players: [Player]
    var dt: DT
    var shield: String
    var abbreviation: String

    init (name: String, players: [Player], dt: DT, shield: String, abbreviation: String){
        self.name = name
        self.players = players
        self.dt = dt
        self.shield = shield
        self.abbreviation = abbreviation
    }
}

