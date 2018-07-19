//
//  Anchors.swift
//  XeroxChat
//
//  Created by MyScrap on 7/19/18.
//  Copyright © 2018 mybucket. All rights reserved.
//

import UIKit

extension UIView{
    
    var safeLeading: NSLayoutXAxisAnchor{
        return safeAreaLayoutGuide.leadingAnchor
    }
    
    var safeTrailing: NSLayoutXAxisAnchor{
        return safeAreaLayoutGuide.trailingAnchor
    }
    
    var safeBottom: NSLayoutYAxisAnchor{
        return safeAreaLayoutGuide.bottomAnchor
    }
    
    var safeTop: NSLayoutYAxisAnchor{
        return safeAreaLayoutGuide.topAnchor
    }
    
    func anchor(leading: NSLayoutXAxisAnchor?, trailing:NSLayoutXAxisAnchor?, top:NSLayoutYAxisAnchor?, bottom: NSLayoutYAxisAnchor?, padding: UIEdgeInsets = UIEdgeInsets.zero){
        if let lead = leading{
            leadingAnchor.constraint(equalTo: lead, constant: padding.left).isActive = true
        }
        if let trail = trailing{
            trailingAnchor.constraint(equalTo: trail, constant: -padding.right).isActive = true
        }
        if let topanch = top{
            topAnchor.constraint(equalTo: topanch, constant: padding.top).isActive = true
        }
        if let bott = bottom {
            bottomAnchor.constraint(equalTo: bott, constant: -padding.bottom).isActive = true
        }
    }
    
    func setHorizontalCentertoSuperView(){
        if let superview = self.superview{
            centerXAnchor.constraint(equalTo: superview.centerXAnchor).isActive = true
        }
    }
    
    func setVerticalCenterToSuperView(){
        if let superview = self.superview{
            centerYAnchor.constraint(equalTo: superview.centerYAnchor).isActive = true
        }
    }
    
}
