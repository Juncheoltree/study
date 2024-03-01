//
//  ViewController.swift
//  PracticeUI
//
//  Created by 김준철 on 2/26/24.
//

import UIKit

struct Family{
    let myName: String
    let bestFriendName: String
    let nextFriendName: String
    let myBrotherName: String
}
class ViewController: UIViewController {
    
    let friendsName: [String] = ["jun","hi","ggggg","key"]
    let koeraName: [String: String] = ["jun": "준철","hi" :"안녕", "ggggg": "ㅎㅎㅎㅎㅎ"]
    
    var count: Int = 0
    
    let friend = Family(myName:"jun2", bestFriendName: "h12", nextFriendName: "gg2", myBrotherName: "key")
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bestFriendName: UILabel!
    @IBOutlet weak var nextFriendName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapButton(_ sender: Any) {
        // = friendNames[0]
        // = friendNames[1]
        // = friendNames[2]
        
        nameLabel.text = friend.myName
        bestFriendName.text = friend.bestFriendName
        nextFriendName.text = friend.nextFriendName
        //friend.myBrother
    }
    
}

