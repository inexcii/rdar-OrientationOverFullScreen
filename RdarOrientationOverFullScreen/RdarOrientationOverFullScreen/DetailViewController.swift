//
//  DetailViewController.swift
//  RdarOrientationOverFullScreen
//
//  Created by Yuan Zhou on 2019/05/12.
//  Copyright © 2019 Yuan Zhou. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        print(".landscape")
        return [ .landscape ]
    }
    
    @IBAction func dismissButtonTapped(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
    
}
