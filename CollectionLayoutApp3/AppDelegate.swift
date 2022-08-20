import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        guard #available(iOS 13, *) else {
            let homeController = HomeViewController()
            let navigationController = UINavigationController(rootViewController: homeController)
            
            let appWindow = UIWindow(frame: UIScreen.main.bounds)
            appWindow.makeKeyAndVisible()
            appWindow.rootViewController = navigationController
            
            self.window = appWindow
            
            return true
        }
        
        return true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {}
}
