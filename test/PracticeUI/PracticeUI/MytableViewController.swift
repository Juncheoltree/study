//
//  MytableViewController.swift
//  PracticeUI
//
//  Created by 김준철 on 3/1/24.
//

import UIKit

class MytableViewController: UIViewController{
    

    @IBOutlet weak var MyTabelView: UITableView!
    
    let friendNames: [String] = ["me", "I"," you","us"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MyTabelView.backgroundColor = .blue
        
        MyTabelView.delegate = self
        MyTabelView.dataSource = self
    }
    
}




extension MytableViewController :UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MyTabelView.dequeueReusableCell(withIdentifier: "MyFristCell", for: indexPath)
        
        cell.textLabel?.text = friendNames[indexPath.row]
        return cell
    }
}
