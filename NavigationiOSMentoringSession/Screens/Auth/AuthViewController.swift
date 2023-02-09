// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class AuthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("VCs \(navigationController?.viewControllers.count)")
    }
    
    @IBAction func loginDidTap(_ sender: Any) {
        performSegue(withIdentifier: "loginSegue", sender: nil)
    }
    
    @IBAction func registerDidTap(_ sender: Any) {
        performSegue(withIdentifier: "registerSegue", sender: nil)
    }
}
