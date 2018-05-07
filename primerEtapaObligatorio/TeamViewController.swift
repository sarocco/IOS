//
//  TeamViewController.swift
//  primerEtapaObligatorio
//
//  Created by Carolina Rocco on 28/4/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import UIKit

class TeamViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var shield: UIImageView!
    @IBOutlet weak var playersTableView: UITableView!
    @IBOutlet weak var playersLabel: UILabel!
    @IBOutlet weak var dtLabel: UILabel!
    @IBOutlet weak var dtNameLabel: UILabel!
    @IBOutlet weak var nextMatchesLabel: UILabel!
    @IBOutlet weak var collectionNextMatches: UICollectionView!    

    var country: Country?
    var players: [Player] = []
    var nextMatches: [Match]? = []
    
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
        }
        playersTableView.reloadData()
        collectionNextMatches.reloadData()
    }
    
    func compareDate(date:String) -> Bool {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "es_ES")
        dateFormatter.dateFormat = "dd 'de' MMMM yyyy HH:mm"
        
        // Create a date object from the string
        if let date = dateFormatter.date(from: date) {
            
            if date < Date() {
                return true
            } else {
                return false
            }
        }
        return false
    }

    //return the number of rows in a given section of a table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return country!.players.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playerId", for: indexPath) as? PlayersTableViewCell
        let player = country?.players[indexPath.row]
        cell?.numberLabel.text = player?.number
        cell?.playerLabel.text = player?.name
        cell?.nameTeamLabel.text = player?.nameTeam
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5 //nextMatches.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "idNextMatch", for: indexPath) as! NextMatchesCollectionViewCell
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 10
        /*let match = nextMatches![indexPath.row]
        cell.countryImage.image = UIImage(named: match.countryA.shield)
        cell.countryName.text = match.countryA.name
        cell.matchDate.text = match.date
        cell.stadiumName.text = match.stadium.name*/
        return cell
    }
    
    
    
    
    
    
    
    /*func getNextMatches() -> [Match]{
     var nextMatches: [Match] = []
        for match in matches{
            if (compareDate(date: match.date)){
                if (countryLabel.text == match.countryA.name || countryLabel.text == match.countryB.name){
                    nextMatches.append(match)
                }
            }
        }
        return nextMatches
    }*/
    
}
