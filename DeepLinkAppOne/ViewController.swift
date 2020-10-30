//
//  ViewController.swift
//  DeepLinkAppOne
//
//  Created by Owen Cross on 15/10/2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var payload: UITextField!
    
    @IBAction func openAppTwo(_ sender: Any) {
        
        let senablePayload = payload.text?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        
        let application = UIApplication.shared
        
        let appTwoPath = "AppTwo://\(senablePayload ?? "")"
        
        let appURL = URL(string: appTwoPath)!
        
        let webURL = URL(string: "https://apps.apple.com/gb/app/renishaw-nc4/id1269480165")!
        
        if application.canOpenURL(appURL) {
            application.open(appURL)
        }
        else
        {
            application.open(webURL)
        }
        
        
    }
}

