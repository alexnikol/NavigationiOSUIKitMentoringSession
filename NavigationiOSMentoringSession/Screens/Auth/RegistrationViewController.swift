// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class RegistrationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func endRegisterDidTap(_ sender: Any) {
        performSegue(withIdentifier: "mainSegue", sender: self)
    }
    
    @IBAction func backDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    deinit {
        print("deinited \(self)")
    }
}
