import UIKit

@available(iOS 13, *)
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let winScene = (scene as? UIWindowScene) else { return }
        
        let homeController = HomeViewController()
        let navigationController = UINavigationController(rootViewController: homeController)
        
        let appWindow = UIWindow(windowScene: winScene)
        appWindow.frame = UIScreen.main.bounds
        appWindow.makeKeyAndVisible()
        appWindow.rootViewController = navigationController
        
        self.window = appWindow
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}
}

