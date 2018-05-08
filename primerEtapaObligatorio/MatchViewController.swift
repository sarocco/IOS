//
//  MatchViewController.swift
//  primerEtapaObligatorio
//
//  Created by Carolina Rocco on 28/4/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import UIKit

class MatchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    //Outlets
    @IBOutlet weak var countryVsCountryLabel: UILabel!
    @IBOutlet weak var stadiumImage: UIImageView!
    @IBOutlet weak var stadiumName: UILabel!
    @IBOutlet weak var vsLabel: UILabel!
    @IBOutlet weak var countryALabel: UILabel!
    @IBOutlet weak var countryBLabel: UILabel!
    @IBOutlet weak var dateTimeLabel: UILabel!
    @IBOutlet weak var timeToTimeTableView: UITableView!
    @IBOutlet weak var countryAButton: UIButton!
    @IBOutlet weak var countryBButton: UIButton!
    @IBOutlet weak var resultA: UILabel!
    @IBOutlet weak var resultB: UILabel!
    //Variables
    var countrySelected = true
    var match : Match!
    var eventsCountryA: [Event]!
    var eventsCountryB: [Event]!
    
    //Actions
    @IBAction func countryAButton(_ sender: UIButton!) {
        countrySelected = true
        performSegue(withIdentifier: "segueToTeamViewController", sender: self)
    }
    @IBAction func countryBButton(_ sender: UIButton!) {
        countrySelected = false
        performSegue(withIdentifier: "segueToTeamViewController", sender: self)
    }
    
    //Loads the data
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeToTimeTableView.delegate = self
        timeToTimeTableView.dataSource = self
        
        if let match = match {
            countryALabel.text = match.countryA.name
            countryBLabel.text = match.countryB.name
            stadiumImage.image = UIImage(named: match.stadium.stadiumImage)
            stadiumName.text = match.stadium.name
            dateTimeLabel.text = match.date
            let imagenA = UIImage (named: match.countryA.shield)
            let imagenB = UIImage (named: match.countryB.shield)
            countryAButton.setImage(imagenA,for: UIControlState.normal)
            countryBButton.setImage(imagenB,for: UIControlState.normal)
            eventsCountryA = match.eventA
            eventsCountryB = match.eventB
            countryVsCountryLabel.text = match.countryA.abbreviation + "vs" + match.countryB.abbreviation
            //Identify who is the winner to bold the result
            if let resultCountryA = match.resultCountryA?.hashValue , let resultCountryB = match.resultCountryB?.hashValue {
                if (resultCountryA > resultCountryB){
                    resultA.font = UIFont.boldSystemFont(ofSize: 16.0)
                } else {
                    resultB.font = UIFont.boldSystemFont(ofSize: 16.0)
                }
            }
            resultA.text = match.resultCountryA?.description
            resultB.text = match.resultCountryB?.description
        }
        timeToTimeTableView.reloadData()
    }
    
    //Gets all the events of this match
    func getAllEvents(eventsCountryA: [Event], eventsCountryB: [Event]) -> [Event]{
        var getEvents: [Event] = []
        for event in eventsCountryA {
            getEvents.append(event)
        }
        for event in eventsCountryB {
            getEvents.append(event)
        }
        return getEvents
    }

    //return the number of rows in a given section of a table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let events = getAllEvents(eventsCountryA: eventsCountryA, eventsCountryB: eventsCountryB)
        return events.count
     }
    
    //Loads all the data en each row, dependig if the event is of countryA or CountryB
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var events = getAllEvents(eventsCountryA: eventsCountryA, eventsCountryB: eventsCountryB)
        //sort the events by time
        events = events.sorted(by: {$0.time < $1.time})
        let event = events[indexPath.row]
        for i in eventsCountryA!{
            if (event.time == i.time && event.player == i.player && event.icon == i.icon){
                let cell = tableView.dequeueReusableCell(withIdentifier: "timeToTimeCountryACell", for: indexPath) as? TimeToTimeATableViewCell
                cell?.iconALabel.text = event.icon
                cell?.minuteLabel.text = event.time.description + "'"
                cell?.playerNameLabel.text = event.player
            return cell!
            }
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "timeToTimeCountryBCell", for: indexPath) as? TimeToTimeBTableViewCell
        cell?.iconBLabel.text = event.icon
        cell?.minuteLabel.text = event.time.description + "'"
        cell?.playerNameLabel.text = event.player
        return cell!
    }
    
    //Set the height of the row
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }

    //Send information needed in next viewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToTeamViewController" {
            let vController = segue.destination as! TeamViewController
            //Send the country to the TeamViewController
                if countrySelected {
                    vController.country = match.countryA
                }
                else {
                    vController.country = match.countryB
                }
        }
    }
    
}


