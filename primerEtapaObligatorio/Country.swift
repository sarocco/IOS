import UIKit
class Country {
    var name: String
    var player: [Player]
    var dt:DT
    //var shield: UIImageView

    init (name: String, player: [Player], dt:DT, shield:UIImageView){
        self.name = name
        self.player = player
        self.dt = dt
        //shield = UIImageView (named:self.name)!
    }
}

