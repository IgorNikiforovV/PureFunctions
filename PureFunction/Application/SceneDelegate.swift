//
//  SceneDelegate.swift
//  PureFunction
//
//  Created by Игорь Никифоров on 02.05.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)

        guard let rootController = TasksViewController.present() else { return }
        let navController = UINavigationController(rootViewController: rootController)

        window?.rootViewController = navController
        window?.makeKeyAndVisible()
    }


}

