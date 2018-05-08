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
    
    //Array of empty matches objects
    var matches:[Match] = []
    
    //constructor
    override func viewDidLoad() {
        super.viewDidLoad()
        //Loads the matches array with all the data of the MainClassData
        matches = MainClassData.loadData()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
    
    //Compare today with the match date
    func compareDate(date:String) -> Bool {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "es_ES")
        dateFormatter.dateFormat = "dd 'de' MMMM yyyy HH:mm"
        // Create a date object from the string
        if let date = dateFormatter.date(from: date) {
            
            if date <= Date() {
                return true
            } else {
                return false
            }
        }
        return false
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellMatch", for:indexPath) as? MainCellTableViewCell
        
        // Access to each Match and displays the data of each match in one row of the table
        let match = matches[indexPath.row]
        cell?.labelDate.text = match.date
        cell?.labelStadium.text = match.stadium.name
        cell?.labelGroup.text = match.group
        cell?.labelCountryOne.text = match.countryA.name
        //Search for the image in the Assets folder with that name
        cell?.pictureCountryOne.image = UIImage(named: match.countryA.shield)
        cell?.labelCountryTwo.text = match.countryB.name
        cell?.pictureCountryTwo.image = UIImage(named: match.countryB.shield)
        if (compareDate(date: match.date!)){
            //Identify who is the winner to bold the result
            if let resultA = match.resultCountryA?.hashValue , let resultB = match.resultCountryB?.hashValue {
                if (resultA > resultB){
                    cell?.labelResultA.font = UIFont.boldSystemFont(ofSize: 16.0)
                } else {
                    cell?.labelResultB.font = UIFont.boldSystemFont(ofSize: 16.0)
                }
            }
            cell?.labelResultA.text = match.resultCountryA
            cell?.labelResultB.text = match.resultCountryB
        } else {
            cell?.labelResultA.text = " "
            cell?.labelResultB.text = " "
        }
        return cell!
    }
    
    //return the number of rows in a given section of a table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matches.count
    }
    
    //Set the height of the row
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    //Send the information of match you select to the next controller: MatchViewController
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let match = matches[indexPath.row]
        let vController = storyboard?.instantiateViewController(withIdentifier: "IdentifierMatchViewController") as? MatchViewController
        self.navigationController?.pushViewController(vController!, animated: true)
        vController?.match = match
        vController?.eventsCountryA = match.eventA
        vController?.eventsCountryB = match.eventB
        
    }
    
    //Deslect the selected row when go back fron MatchViweController to ViewController
    override func viewWillAppear(_ animated: Bool) {
        if let index = self.tableView.indexPathForSelectedRow{
            self.tableView.deselectRow(at: index, animated: true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        


}

