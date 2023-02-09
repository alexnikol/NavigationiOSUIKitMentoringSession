// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Main"
//        navigationItem.hidesBackButton = true
        navigationController?.isNavigationBarHidden = false
        navigationController?.viewControllers.removeSubrange(0..<2)
        print("VCs \(navigationController?.viewControllers.count)")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            print("VCs2 \(self.navigationController?.viewControllers.count)")
        })
    }
    
    @IBAction func toNext(_ sender: Any) {
        performSegue(withIdentifier: "subFirstSegue", sender: self)
    }
}
