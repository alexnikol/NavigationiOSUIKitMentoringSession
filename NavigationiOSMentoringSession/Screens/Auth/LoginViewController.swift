// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func endLoginDidTap(_ sender: Any) {
        performSegue(withIdentifier: "mainSegue", sender: self)
    }
    
    @IBAction func backDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
