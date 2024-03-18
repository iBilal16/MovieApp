//
//  FavouriteVC.swift
//  MovieApp
//
//  Created by Bilal Ahmad on 18/03/2024.
//

import Foundation
import UIKit

class FavouriteVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    var favoritesArray:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getDataFromDefaults()
        setupTableView()
        print("reloading table view")
        
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("again..and..again")
        getDataFromDefaults()
        setupTableView()
        tableView.reloadData()
        
    }
    
    var arrayHasAdded: Bool {
        get {
            return UserDefaults.standard.object(forKey: "favoritesArray") != nil
        }
    }
    
    func getDataFromDefaults(){
        if arrayHasAdded == true{
            let temp1 = UserDefaults.standard.array(forKey: "favoritesArray") as! [String]
            favoritesArray = temp1
        }
    }
    
    func setupTableView(){
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoritesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //reuseIdentifier check!!!
        let myCell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        
        myCell.textLabel!.text = favoritesArray[indexPath.row]
        
        return myCell
    }
    
    
}






