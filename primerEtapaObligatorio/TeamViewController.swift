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
    var matches: [Match] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playersTableView.delegate = self
        playersTableView.dataSource = self
        //<---OJO da ERROR--->
        //collectionNextMatches.delegate = self
        //collectionNextMatches.dataSource = self
        
        //check if exist a country
        if let country = country {
            //load de conuntry shield to imageContainer
            shield.image = UIImage(named: country.shield)
            countryLabel.text = country.name
            players = country.players
            dtNameLabel.text = country.dt.name
        }
        playersTableView.reloadData()
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
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "matchCollectionCell", for: indexPath) as! NextMatchesCollectionViewCell
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        let nextMAtchcell = cell as! NextMatchesCollectionViewCell
        nextMAtchcell.countryName.text = country?.name
    }
    
    /*func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 4
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
    {
        
        return 1;
    }*/
    
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


