//
//  MainTabBarController.swift
//  IGListKitArchetype
//
//  Created by 陳囿豪 on 2019/6/2.
//  Copyright © 2019 yasuoyuhao. All rights reserved.
//

import UIKit
import PKCHelper
import IGListKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setupViewController()
    }
    
    fileprivate func setupViewController() {
        
        // Home
        let collectionNormal = CollectionNormalController(collectionViewLayout: UICollectionViewFlowLayout())
        collectionNormal.title = "Normal"
        let navCollectionNormal = templateNavController(image: #imageLiteral(resourceName: "s"), rootViewController: collectionNormal, selectImage: #imageLiteral(resourceName: "s").withRenderingMode(.alwaysOriginal))
        
        // Home
        
        let collectionIGListKit = CollectionIGListKitController()
        collectionIGListKit.title = "IGListKit"
        let navCollectionIGListKit = templateNavController(image: #imageLiteral(resourceName: "s"), rootViewController: collectionIGListKit, selectImage: #imageLiteral(resourceName: "s").withRenderingMode(.alwaysOriginal))
        
        // tabBar
        
        // tabBar.tintColor = UIColor.reddishOrange
        tabBar.unselectedItemTintColor = .brownishGrey
        
        viewControllers = [
            navCollectionNormal,
            navCollectionIGListKit
        ]
        
    }
    
    fileprivate func templateNavController(image: UIImage?, rootViewController: UIViewController = UIViewController(), selectImage: UIImage? = nil) -> UINavigationController {
        
        let viewNavController = UINavigationController(rootViewController: rootViewController)
        
        if let image = image {
            viewNavController.tabBarItem.image = image
        }
        
        if let selectImage = selectImage {
            viewNavController.tabBarItem.selectedImage = selectImage
        }
        
        return viewNavController
    }
    
}
