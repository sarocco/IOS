//
//  ViewController.swift
//  primerEtapaObligatorio
//
//  Created by SP08 on 19/4/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  
    //Outlet tableView
    @IBOutlet weak var tableView: UITableView!
    
    var matches:[Match] = []
    
    //constructor
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var firstMatch = Match(date: "2018.05.30",
                               group: "A",
                               stadium: Stadium(name:"samaraArena", stadiumImage: "samaraArena"),
                               countryA: Country(name: "uruguay", player: [], dt: DT(name: "Tabarez",identifier: "DT"), shield:"uruguay"),
                               countryB: Country(name: "rusia", player: [], dt: DT(name: "jsahjgfshdg",identifier: "DT"), shield: "rusia"))
        var secondMatch = Match(date: "2018.05.30",
                               group: "A",
                               stadium: Stadium(name:"samaraArena", stadiumImage: "samaraArena"),
                               countryA: Country(name: "uruguay", player: [], dt: DT(name: "Tabarez",identifier: "DT"), shield:"uruguay"),
                               countryB: Country(name: "rusia", player: [], dt: DT(name: "jsahjgfshdg",identifier: "DT"), shield: "rusia"),resultCountryA: 2,resultCountryB: 0)
        matches = [firstMatch, secondMatch]
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellMatch", for:indexPath) as? MainCellTableViewCell
    
        let match = matches[indexPath.row]
        //Get the name of the Country of the Matches array
        cell?.labelCountryOne.text = match.countryA.name
        //Search for the image in the Assets folder with that name
        cell?.pictureCountryOne.image = UIImage(named: match.countryA.shield)
        cell?.labelCountryTwo.text = match.countryB.name
        cell?.pictureCountryTwo.image = UIImage(named: match.countryB.shield)
        return cell!
    }
    
    //return the number of rows in a given section of a table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matches.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vController = storyboard?.instantiateViewController(withIdentifier: "IdentifierViewController")
        navigationController?.show(vController!, sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        


}

