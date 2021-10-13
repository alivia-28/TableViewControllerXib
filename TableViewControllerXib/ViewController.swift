//
//  ViewController.swift
//  TableViewControllerXib
//
//  Created by Alivia Guin on 10/12/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let imageArray = ["Seattle1", "Seattle2", "Seattle3", "Seattle4", "Seattle5", "Seattle6", "Seattle7", "Seattle8", "Seattle9", "Seattle10"]

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tblView.delegate = self
        tblView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("CustomTableViewCell", owner: self, options: nil)?.first as! CustomTableViewCell
        cell.imgView.image = UIImage(named: imageArray[indexPath.row])
        cell.lblImage.text = imageArray[indexPath.row]

        return cell
    }

}

