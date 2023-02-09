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
        let mainVC = UINavigationController(rootViewController: storyboard.instantiateViewController(identifier: String(describing: MainViewController.self)))
        let subFirstVC = storyboard.instantiateViewController(identifier: String(describing: SubFirstMainViewController.self))
        let subSecondVC = storyboard.instantiateViewController(identifier: String(describing: SubSecondMainViewController.self))
        let tabbar = UITabBarController()
        
        mainVC.tabBarItem = .init(title: "Main", image: nil, tag: 0)
        subFirstVC.tabBarItem = .init(title: "First", image: nil, tag: 0)
        subSecondVC.tabBarItem = .init(title: "Second", image: nil, tag: 0)
        
        tabbar.setViewControllers([mainVC, subFirstVC, subSecondVC], animated: false)
        window.rootViewController = tabbar
    }
    
    private func showAsRootInWindow(vc: UIViewController) {
        window.rootViewController = vc
    }
}
