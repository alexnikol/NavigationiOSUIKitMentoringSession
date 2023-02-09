// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func endLoginDidTap(_ sender: Any) {
        let sceneDelegate = view.window?.windowScene?.delegate as? SceneDelegate
        sceneDelegate?.router?.showMainFlow()
    }
    
    @IBAction func backDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    deinit {
        print("deinited \(self)")
    }
}
