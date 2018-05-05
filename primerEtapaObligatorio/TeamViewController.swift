//
//  TeamViewController.swift
//  primerEtapaObligatorio
//
//  Created by Carolina Rocco on 28/4/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import UIKit

class TeamViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var shield: UIImageView!
    @IBOutlet weak var playersTableView: UITableView!
    @IBOutlet weak var playersLabel: UILabel!
    @IBOutlet weak var nextMatchesLabel: UILabel!
    @IBOutlet weak var collectionNextMatches: UICollectionView!    

    var country: Country?
    var players: [Player] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playersTableView.delegate = self
        playersTableView.dataSource = self
        //check if exist a country
        if let country = country {
            //load de conuntry shield to imageContainer
            shield.image = UIImage(named: country.shield)
            countryLabel.text = country.name
            players = country.players
        }
        playersTableView.reloadData()
    }
    
    //return the number of rows in a given section of a table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sizePlayers = country!.players.count
        return sizePlayers + 1
    }
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sizePlayers = country!.players.count
        if (indexPath.row <= sizePlayers){
            let cell = tableView.dequeueReusableCell(withIdentifier: "playerId", for: indexPath) as? PlayersTableViewCell
            let player = players[indexPath.row]
            cell?.numberLabel.text = player.number
            cell?.playerLabel.text = player.name
            cell?.nameTeamLabel.text = player.nameTeam
            return cell!
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "dtId", for: indexPath) as? DTTableViewCell
            cell?.nameDTLabel.text = country?.dt.name
            cell?.idDTLabel.text = country?.dt.identifier
            return cell!
        }
       return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


