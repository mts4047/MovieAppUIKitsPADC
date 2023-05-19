//
//  ViewController.swift
//  Starter
//
//  Created by Myo Thandar soe on 12/03/2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableViewContent: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewContent.dataSource = self
        tableViewContent.delegate = self
        
        tableViewContent.register(UINib(nibName: String(describing: Sample1TableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: Sample1TableViewCell.self))
        tableViewContent.register(UINib(nibName: String(describing: Sample2TableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: Sample2TableViewCell.self))
      
        debugPrint("viewDidLoad")
        
    }
    
    //View Controller Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        debugPrint("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        debugPrint("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        debugPrint("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        debugPrint("viewDidDisappear")
    }
    
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: Sample1TableViewCell.self), for: indexPath) as? Sample1TableViewCell else{
                return UITableViewCell()
            }
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: Sample2TableViewCell.self), for: indexPath) as? Sample2TableViewCell else{
                return UITableViewCell()
            }
            return cell
        default:
            return UITableViewCell()
        }
        
       
        
        
    }
    
}



