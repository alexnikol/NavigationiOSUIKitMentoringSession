// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func endLoginDidTap(_ sender: Any) {
        guard let window = view.window else { return }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = storyboard.instantiateViewController(identifier: String(describing: MainViewController.self))
        let navigation = UINavigationController(rootViewController: mainVC)
        window.rootViewController = navigation
    }
    
    @IBAction func backDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    deinit {
        print("deinited \(self)")
    }
}
