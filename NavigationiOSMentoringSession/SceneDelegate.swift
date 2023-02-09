// Copyright © 2023 Almost Engineer. All rights reserved.

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var router: RootRouter?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
    
        let router = RootRouter(window: window)
        router.showInitialFlow()
        self.window = window
        self.router = router
        window.makeKeyAndVisible()
        
        UserService.shared.getUser { user in
            if let user = user {
                router.showMainFlow()
            } else {
                router.showAuthFlow()
            }
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}
}


class UserService {
    
    static let shared = UserService()
    
    private init() {}
    
    func getUser(compeltion: @escaping (User?) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            compeltion(User(name: "Any name"))
        })
    }
}

struct User {
    let name: String
}
