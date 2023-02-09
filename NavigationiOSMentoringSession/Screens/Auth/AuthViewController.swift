// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class AuthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("VCs \(navigationController?.viewControllers.count ?? 0)")
    }
    
    @IBAction func loginDidTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let loginVC = storyboard.instantiateViewController(identifier: "LoginViewController")
        navigationController?.pushViewController(loginVC, animated: true)
    }
    
    @IBAction func registerDidTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let registerVC = storyboard.instantiateViewController(identifier: "RegistrationViewController")
        navigationController?.pushViewController(registerVC, animated: true)
    }
    
    deinit {
        print("deinited \(self)")
    }
}
