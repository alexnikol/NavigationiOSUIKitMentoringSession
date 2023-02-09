// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Main"
//        navigationItem.hidesBackButton = true
        navigationController?.isNavigationBarHidden = false
        print("VCs \(navigationController?.viewControllers.count ?? 0)")
    }
    
    @IBAction func toNext(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let subFirstVC = storyboard.instantiateViewController(identifier: String(describing: SubFirstMainViewController.self))
        navigationController?.pushViewController(subFirstVC, animated: true)
    }
    
    deinit {
        print("deinited \(self)")
    }
}
