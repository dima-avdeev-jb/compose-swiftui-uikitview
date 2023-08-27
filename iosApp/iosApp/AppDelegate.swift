import Foundation
import UIKit
import shared

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // Create the UIWindow object and assign the rootViewController
        window = UIWindow(frame: UIScreen.main.bounds)
        let yourViewController = Main_iosKt.ComposeOnly()

        // Set the root view controller of the app's window
        window?.rootViewController = yourViewController

        // Make the window visible
        window?.makeKeyAndVisible()

        return true
    }
}
