//
//  TabBarController.swift
//  Task11UITableViewCustomDesign
//
//  Created by Богдан Бакун on 23.05.2023.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard
            let lastVC = self.viewControllers?.last
        else { return }
        
        let originalImage = UIImage(named: "detailingAvatar")
        let targetSize = CGSize(width: 24, height: 24)
        UIGraphicsBeginImageContextWithOptions(targetSize, false, 0.0)
        let context = UIGraphicsGetCurrentContext()
        let targetRect = CGRect(origin: .zero, size: targetSize)
        context?.addPath(UIBezierPath(roundedRect: targetRect, cornerRadius: 0).cgPath)
        context?.clip()
        originalImage?.draw(in: targetRect)
        let croppedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        lastVC.tabBarItem = UITabBarItem(title: nil, image: croppedImage, tag: 0)
    }
    
}
