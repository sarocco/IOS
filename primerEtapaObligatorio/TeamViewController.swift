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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playersTableView.delegate = self
        playersTableView.dataSource = self
        playersTableView.reloadData()
        
    }
    
    //return the number of rows in a given section of a table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cellTable: UITableViewCell?
        if (indexPath.row % 2 == 0)
        {
            cellTable = tableView.dequeueReusableCell(withIdentifier: "playerId")
        }
        else {
            cellTable = tableView.dequeueReusableCell(withIdentifier: "dtId")
        }
        
        return cellTable!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vController = storyboard?.instantiateViewController(withIdentifier: "TeamViewController")
        navigationController?.show(vController!, sender: nil)
    }
        // Do any additional setup after loading the view.
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


