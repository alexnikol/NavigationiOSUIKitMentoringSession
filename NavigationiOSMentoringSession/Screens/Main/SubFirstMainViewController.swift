// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class SubFirstMainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toNext(_ sender: Any) {
        performSegue(withIdentifier: "subSecondSegue", sender: self)
    }
}
