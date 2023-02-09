// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class SubFirstMainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toNext(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let subSecondVC = storyboard.instantiateViewController(identifier: String(describing: SubSecondMainViewController.self))
        navigationController?.pushViewController(subSecondVC, animated: true)
    }
    
    deinit {
        print("deinited \(self)")
    }
}
