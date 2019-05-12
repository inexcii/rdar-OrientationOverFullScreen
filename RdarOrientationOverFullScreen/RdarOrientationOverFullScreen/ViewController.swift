//
//  ViewController.swift
//  RdarOrientationOverFullScreen
//
//  Created by Yuan Zhou on 2019/05/12.
//  Copyright © 2019 Yuan Zhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        print(".portrait")
        return [ .portrait ]
    }

    @IBAction func nextPageButtonTapped(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController")
        
        // this line causes the bug
        vc.modalPresentationStyle = .overFullScreen
        
        self.present(vc, animated: true) {
        }
    }
    
}

