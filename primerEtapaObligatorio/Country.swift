
class Country {
    var name: String
    var player: [Player]
    var dt:DT
    var shield: String

    init (name: String, player: [Player], dt:DT, shield: String){
        self.name = name
        self.player = player
        self.dt = dt
        self.shield = shield
    }
}

