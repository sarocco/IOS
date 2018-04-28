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
    @IBOutlet weak var countryAImage: UIImageView!
    @IBOutlet weak var countryBImage: UIImageView!
    @IBOutlet weak var countryALabel: UILabel!
    @IBOutlet weak var countryBLabel: UILabel!
    @IBOutlet weak var dateTimeLabel: UILabel!
    @IBOutlet weak var timeToTimeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*timeToTimeTableview.delegate = self
        timeToTimeTableview.dataSource = self
        timeToTimeTableview.reloadData()*/
        // Do any additional setup after loading the view.
    }
    
    //return the number of rows in a given section of a table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "timeToTimeCell")
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vController = storyboard?.instantiateViewController(withIdentifier: "IdentifierViewController")
        navigationController?.show(vController!, sender: nil)
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
