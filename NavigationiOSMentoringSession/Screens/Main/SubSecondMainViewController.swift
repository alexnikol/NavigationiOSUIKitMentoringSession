// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class SubSecondMainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func logout(_ sender: Any) {
        guard let window = view.window else { return }
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let authVC = storyboard.instantiateViewController(identifier: String(describing: AuthViewController.self))
    
        let authNavigationController = UINavigationController(rootViewController: authVC)
        window.rootViewController = authNavigationController
    }
    
    deinit {
        print("deinited \(self)")
    }
}
