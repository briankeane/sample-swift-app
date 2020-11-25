//
//  DashboardViewController.swift
//  Dashboard
//
//  Created by Brian Keane on 11/25/20.
//

import UIKit
import Kingfisher

class DashboardViewController: UIViewController {

  @IBOutlet weak var profileImageView: UIImageView!
  @IBOutlet weak var userNameLabel: UILabel!
  
  let userInfo:[String:String] = [
    "username": "Bob",
    "profileImageURL": "https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg"
  ]
  
  let habitHistory = [
    Date()
  
  ]
  
  override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
  
  func updateUI() {
    profileImageView.kf.setImage(with: URL(string: self.userInfo["profileImageURL"]!))
    self.userNameLabel.text = userInfo["username"]
    
    
    
  }
}
