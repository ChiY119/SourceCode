//
//  SplashViewController.swift
//  PDFSignature
//
//  Created by FAT_MAC on 6/19/20.
//  Copyright © 2020 cagdaseryuksel. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

      @IBOutlet weak var imgLogo: UIImageView!
      @IBOutlet weak var vLogo: UIView!
      let kAppDelegate = UIApplication.shared.delegate as! AppDelegate
      override func viewDidLoad() {
          super.viewDidLoad()
          imgLogo.layer.cornerRadius = 20
          
          vLogo.layer.shadowColor = UIColor.black.cgColor
          vLogo.layer.cornerRadius = 15
          vLogo.layer.shadowOpacity = 0.5
          vLogo.layer.shadowRadius = 8.0
          vLogo.layer.shadowOffset = CGSize(width: 0, height: 3)
          
          
          
      }
      override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
      }
      override func viewWillAppear(_ animated: Bool) {
          super.viewWillAppear(animated)
       
          perform(#selector(pushHome),with: nil,afterDelay: 2)
          
      }
      @objc  func pushHome() {
          let controller = storyboard?.instantiateViewController(withIdentifier: "main")
          kAppDelegate.window?.rootViewController = controller
          kAppDelegate.window?.makeKeyAndVisible()
      }
}
