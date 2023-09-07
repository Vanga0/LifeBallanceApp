//
//  UIView + Extensions.swift
//  LifeBallanceApp
//
//  Created by Vagan Albertyan on 07.09.2023.
//

import UIKit

extension UIView {
    func addShadowView(){
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 5)
        layer.shadowRadius = 1
        layer.shadowOpacity = 0.5
    }
}
