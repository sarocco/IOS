//
//  MatchViewController.swift
//  primerEtapaObligatorio
//
//  Created by Carolina Rocco on 28/4/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import UIKit

class MatchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
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
    
    var countrySelected = true
    var match : Match?
    var eventsCountryA: [Event]?
    var eventsCountryB: [Event]?
    
    
    @IBAction func countryAButton(_ sender: UIButton!) {
        countrySelected = true
        performSegue(withIdentifier: "segueToTeamViewController", sender: self)
    }
    @IBAction func countryBButton(_ sender: UIButton!) {
        countrySelected = false
        performSegue(withIdentifier: "segueToTeamViewController", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeToTimeTableView.delegate = self
        timeToTimeTableView.dataSource = self
        
        
        // if let match y cargar datos desde ese objeto
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
          
        }
        timeToTimeTableView.reloadData()
        
        
    }
    func getAllEvents(eventsCountryA: [Event], eventsCountryB: [Event]) -> [Event]{
        var getEvents: [Event] = []
        //let start = 0
        for event in eventsCountryA {
           // if(Int(event.time)! < start){
                
            //}
            getEvents.append(event)
        }
        for event in eventsCountryB {
            getEvents.append(event)
        }
        return getEvents
    }
    
    //return the number of rows in a given section of a table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let events = getAllEvents(eventsCountryA: eventsCountryA!, eventsCountryB: eventsCountryB!)
        return events.count
     }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let events = getAllEvents(eventsCountryA: eventsCountryA!, eventsCountryB: eventsCountryB!)
        let event = events[indexPath.row]
        for i in eventsCountryA!{
            if (event.time == i.time && event.player == i.player && event.icon == i.icon){
                let cell = tableView.dequeueReusableCell(withIdentifier: "timeToTimeCountryACell", for: indexPath) as? TimeToTimeATableViewCell
                cell?.iconALabel.text = event.icon
                cell?.minuteLabel.text = event.time
                cell?.playerNameLabel.text = event.player
            return cell!
            }
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "timeToTimeCountryBCell", for: indexPath) as? TimeToTimeBTableViewCell
        cell?.iconBLabel.text = event.icon
        cell?.minuteLabel.text = event.time
        cell?.playerNameLabel.text = event.player
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToTeamViewController" {
            let vController = segue.destination as! TeamViewController
            //Send the country to the TeamViewController
                if countrySelected {
                    vController.country = match?.countryA
                }
                else {
                    vController.country = match?.countryB
                }
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
}


