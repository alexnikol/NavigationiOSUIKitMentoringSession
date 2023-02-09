// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class SubSecondMainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func logout(_ sender: Any) {
        performSegue(withIdentifier: "toAuth", sender: self)
    }
}
