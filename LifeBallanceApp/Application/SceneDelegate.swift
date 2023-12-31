//
//  SceneDelegate.swift
//  LifeBallanceApp
//
//  Created by Vagan Albertyan on 31.08.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = StatisticViewController() //MainViewController()
        window?.makeKeyAndVisible()
    }
}

