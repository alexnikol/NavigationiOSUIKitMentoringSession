// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

final class RootRouter {
    
    var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func showInitialFlow() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let loadingVC = storyboard.instantiateViewController(identifier: String(describing: RootViewController.self))
        showAsRootInWindow(vc: loadingVC)
    }
    
    func showAuthFlow() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let authVC = storyboard.instantiateViewController(identifier: String(describing: AuthViewController.self))
        let authNavigationController = UINavigationController(rootViewController: authVC)
        window.rootViewController = authNavigationController
    }
    
    func showMainFlow() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = storyboard.instantiateViewController(identifier: String(describing: MainViewController.self))
    
        let authNavigationController = UINavigationController(rootViewController: mainVC)
        window.rootViewController = authNavigationController
    }
    
    private func showAsRootInWindow(vc: UIViewController) {
        window.rootViewController = vc
    }
}
