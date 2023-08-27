import Foundation
import UIKit
import shared

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)], for: .normal)

        let firstViewController = Main_iosKt.ComposeOnly()
        firstViewController.title = "Compose inside UIKit"

        let secondViewController = SecondViewController()
//        secondViewController.view.backgroundColor = .lightGray
        secondViewController.title = "UIKit"

        // Wrap them in a UINavigationController for the titles
        let firstNavController = UINavigationController(rootViewController: firstViewController)
        let secondNavController = UINavigationController(rootViewController: secondViewController)

        // Set up the UITabBarController
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [firstNavController, secondNavController]
        tabBarController.tabBar.items?[0].title = "Compose"
        tabBarController.tabBar.items?[1].title = "UIKit"

        // Set the tab bar controller as the window's root view controller and make it visible
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()

        return true
    }

}

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set the background color of the view to white
        self.view.backgroundColor = UIColor.white

        // Create a UILabel
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false  // Enable Auto Layout
        label.text = "Hello, this is SecondViewController"
        label.textAlignment = .center
        label.numberOfLines = 0  // Allow the label to wrap text across multiple lines

        // Add the label to the view's subviews
        self.view.addSubview(label)

        // Center the label within the view
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: self.view.bottomAnchor),
//            label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            label.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
        ])
    }

}
