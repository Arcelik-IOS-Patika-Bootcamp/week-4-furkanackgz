//
//  ViewController.swift
//  week4_Assignment
//
//  Created by Furkan Açıkgöz on 12.06.2022.
//

import UIKit

class MainView: UIViewController, Contract.mainView  {

    @IBOutlet weak var labelFavorites: UILabel!
    @IBOutlet weak var buttonAdd: UIButton!
    @IBOutlet weak var tableViewFavorites: UITableView!
    @IBOutlet weak var buttonAscendants: UIButton!
    @IBOutlet weak var buttonDescendants: UIButton!
    @IBOutlet weak var tableViewAscDes: UITableView!
    
    var presenter: Contract.presenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonAddTapped(_ sender: Any) {
        
    }
    
    @IBAction func buttonAscendantsTapped(_ sender: Any) {
        
    }
    
    @IBAction func buttonDescendantsTapped(_ sender: Any) {
        
    }
    
}

// MARK: - Presenter Related
extension MainView {
    
    func updateFavoritesTableView() {
        <#code#>
    }
    
    func updateAscDesTableView() {
        <#code#>
    }
}
