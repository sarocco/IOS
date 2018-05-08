//
//  TeamViewController.swift
//  primerEtapaObligatorio
//
//  Created by Carolina Rocco on 28/4/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import UIKit

class TeamViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    //Outlets
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var shield: UIImageView!
    @IBOutlet weak var playersTableView: UITableView!
    @IBOutlet weak var playersLabel: UILabel!
    @IBOutlet weak var dtLabel: UILabel!
    @IBOutlet weak var dtNameLabel: UILabel!
    @IBOutlet weak var nextMatchesLabel: UILabel!
    @IBOutlet weak var collectionNextMatches: UICollectionView!    

    //Variables
    var country: Country!
    var players: [Player]! = []
    var nextMatches: [Match]! = []
    
    //Loads data
    override func viewDidLoad() {
        super.viewDidLoad()
        playersTableView.delegate = self
        playersTableView.dataSource = self
        collectionNextMatches.delegate = self
        collectionNextMatches.dataSource = self
        self.collectionNextMatches.isPagingEnabled = false
        
        //check if exist a country
        if let country = country {
            //load de conuntry shield to imageContainer
            shield.image = UIImage(named: country.shield)
            countryLabel.text = country.name
            players = country.players
            dtNameLabel.text = country.dt.name
            nextMatches = country.nextMatches
        }
        playersTableView.reloadData()
        collectionNextMatches.reloadData()
    }
    
    //return the number of rows in a given section of a table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return country.players.count
    }
   
    //Set the information inside the table
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playerId", for: indexPath) as? PlayersTableViewCell
        let player = country.players[indexPath.row]
        cell?.numberLabel.text = player.number
        cell?.playerLabel.text = player.name
        cell?.nameTeamLabel.text = player.nameTeam
        return cell!
    }
    
    //Set the height of each row
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //Returns how many collections are needed
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nextMatches.count
    }
    
    //Loads the information of the NextMatches in each collection cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "idNextMatch", for: indexPath) as! NextMatchesCollectionViewCell
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        let match = nextMatches[indexPath.row]
        if (country?.name == match.countryA.name){
            cell.countryImage.image = UIImage(named: match.countryB.shield)
            cell.countryName.text = match.countryB.name
            cell.matchDate.text = match.date
            cell.stadiumName.text = match.stadium.name
            return cell
        }else{
            cell.countryImage.image = UIImage(named: match.countryA.shield)
            cell.countryName.text = match.countryA.name
            cell.matchDate.text = match.date
            cell.stadiumName.text = match.stadium.name
            return cell
            
        }
    }
    
    //Send the information of the match you select to the MechView controller
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let match = nextMatches[indexPath.row]
        let vController = storyboard?.instantiateViewController(withIdentifier: "IdentifierMatchViewController") as? MatchViewController
        self.navigationController?.pushViewController(vController!, animated: true)
        vController?.match = match
        vController?.eventsCountryA = match.eventA
        vController?.eventsCountryB = match.eventB
    }
    
}
