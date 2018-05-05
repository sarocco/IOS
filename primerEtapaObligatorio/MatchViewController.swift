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
    
    @IBAction func countryBButton(_ sender: UIButton!) {
        performSegue(withIdentifier: "segueToTeamViewController", sender: self)
    }
    
    @IBAction func countryAButton(_ sender: UIButton!) {
        performSegue(withIdentifier: "segueToTeamViewController", sender: self)
    }
    
    var imageCountryA = UIImage()
    var nameCountryA = ""
    var imageCountryB = UIImage()
    var nameCountryB = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeToTimeTableView.delegate = self
        timeToTimeTableView.dataSource = self
        timeToTimeTableView.reloadData()
        countryALabel.text = nameCountryA
        countryBLabel.text = nameCountryB
        
        
    }
    
    
    
    //return the number of rows in a given section of a table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cellTable: UITableViewCell?
        if (indexPath.row % 2 == 0)
        {
            cellTable = tableView.dequeueReusableCell(withIdentifier: "timeToTimeCountryACell")
        }
        else {
            cellTable = tableView.dequeueReusableCell(withIdentifier: "timeToTimeCountryBCell")
        }
        
        return cellTable!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
