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
        
        var firstMatch = Match(date: "05 de Junio 2018 10:04",
                               group: "Grupo A",
                               stadium: Stadium(name:"Samara Arena", stadiumImage: "Samara Arena"),
                               countryA: Country(name: "Uruguay", player: [], dt: DT(name: "Tabarez",identifier: "DT"), shield:"Uruguay"),
                               countryB: Country(name: "Rusia", player: [], dt: DT(name: "jsahjgfshdg",identifier: "DT"), shield: "Rusia"))
        var secondMatch = Match(date: "05 de Junio 2018 10:04",
                               group: "Grupo A",
                               stadium: Stadium(name:"Estadio Central", stadiumImage: "Estadio Central"),
                               countryA: Country(name: "Uruguay", player: [], dt: DT(name: "Tabarez",identifier: "DT"), shield:"Uruguay"),
                               countryB: Country(name: "Egipto", player: [], dt: DT(name: "surugn",identifier: "DT"), shield: "Egipto"),resultCountryA: "- 2",resultCountryB: "0 -")
        var thirdMatch = Match(date: "04 de Mayo 2018 10:04",
                                group: "Grupo A",
                                stadium: Stadium(name:"Volgogrado Arena", stadiumImage: "Volgogrado Arena"),
                                countryA: Country(name: "Arabia Saudi", player: [], dt: DT(name: "lololo",identifier: "DT"), shield:"Arabia Saudi"),
                                countryB: Country(name: "Egipto", player: [], dt: DT(name: "lalalal",identifier: "DT"), shield: "Egipto"),resultCountryA: "- 2",resultCountryB: "0 -")
        matches = [firstMatch, secondMatch, thirdMatch]
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
        
        
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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellMatch", for:indexPath) as? MainCellTableViewCell
    
        let match = matches[indexPath.row]
        //Get the name of the Country of the Matches array
        cell?.labelDate.text = match.date
        cell?.labelStadium.text = match.stadium.name
        cell?.labelGroup.text = match.group
        cell?.labelCountryOne.text = match.countryA.name
        //Search for the image in the Assets folder with that name
        cell?.pictureCountryOne.image = UIImage(named: match.countryA.shield)
        cell?.labelCountryTwo.text = match.countryB.name
        cell?.pictureCountryTwo.image = UIImage(named: match.countryB.shield)
        if (compareDate(date: match.date)){
            cell?.labelResultA.text = match.resultCountryA
            cell?.labelResultB.text = match.resultCountryB
        }
        // Setup a date formatter to match the format of your string

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
        let match = matches[indexPath.row]//ver si podemos arreglar esto
        let vController = storyboard?.instantiateViewController(withIdentifier: "IdentifierViewController") as? MatchViewController
        self.navigationController?.pushViewController(vController!, animated: true)
        vController?.nameCountryA = match.countryA.name
        vController?.nameCountryB = match.countryB.name
        //vController?.stadiumName = match.stadium.stadiumImage
        

        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        


}

