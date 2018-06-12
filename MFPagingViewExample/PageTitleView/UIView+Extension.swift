//
//  UIView+Extension.swift
//  MFPagingViewExample
//  GitHub: https://github.com/wwx1991/MFPagingView
//  Created by iOS on 2018/6/12.
//  Copyright © 2018年 GM. All rights reserved.
//

import UIKit

extension UIView {
    
    var x: CGFloat {
        get{
            return frame.origin.x
        }
        set(newValue){
            frame.origin.x = newValue
        }
    }
    
    var y: CGFloat {
        get{
            return frame.origin.y
        }
        set(newValue){
            frame.origin.y = newValue
        }
    }
    
    
    var centerX: CGFloat {
        get{
          return center.x
        }
        set(newValue){
           center.x = newValue
        }
    }
    
    var centerY: CGFloat {
        get{
          return center.y
        }
        set(newValue){
            center.y = newValue
        }
    }
    
    var width: CGFloat {
        get{
            return frame.size.width
        }
        set(newValue){
            frame.size.width = newValue
        }
    }
    
    var height: CGFloat {
        get{
            return frame.size.height
        }
        set(newValue){
            frame.size.height = newValue
        }
    }
    
    var size: CGSize {
        get{
            return bounds.size
        }
        set(newValue){
            frame.size = newValue
        }
    }
    
    var origin: CGPoint {
        get{
            return frame.origin
        }
        set(newValue){
            frame.origin = newValue
        }
    }
    
}
