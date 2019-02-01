//
//  LayoutTool.swift
//  FastLayout
//
//  Created by 逸唐陳 on 2019/2/1.
//  Copyright © 2019 逸唐陳. All rights reserved.
//

public extension UIView {
    
    func fill(toView view: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        self.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    }
    
    func quickLayout(top: NSLayoutAnchor<NSLayoutYAxisAnchor>? = nil, bottom: NSLayoutAnchor<NSLayoutYAxisAnchor>? = nil, leding: NSLayoutAnchor<NSLayoutXAxisAnchor>? = nil, trailing: NSLayoutAnchor<NSLayoutXAxisAnchor>? = nil, centerY: NSLayoutAnchor<NSLayoutYAxisAnchor>? = nil, centerX: NSLayoutAnchor<NSLayoutXAxisAnchor>? = nil, height: CGFloat = 0, width: CGFloat = 0, leadingSpacing: CGFloat = 0, trailingSpacing: CGFloat = 0, topSpacing: CGFloat = 0, bottomSpacing: CGFloat = 0, centerYSpacing: CGFloat = 0, centerXSpacing: CGFloat = 0) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerYAnchor.constraint(equalTo: centerY ?? self.centerYAnchor, constant: centerYSpacing).isActive = centerY != nil ? true : false
        self.centerXAnchor.constraint(equalTo: centerX ?? self.centerXAnchor, constant: centerXSpacing).isActive = centerX != nil ? true : false
        self.topAnchor.constraint(equalTo: top ?? self.topAnchor, constant: topSpacing).isActive = top != nil ? true : false
        self.bottomAnchor.constraint(equalTo: bottom ?? self.bottomAnchor, constant: bottomSpacing).isActive = bottom != nil ? true : false
        self.leadingAnchor.constraint(equalTo: leding ?? self.leadingAnchor, constant: leadingSpacing).isActive = leding != nil ? true : false
        self.trailingAnchor.constraint(equalTo: trailing ?? self.trailingAnchor, constant: trailingSpacing).isActive = trailing != nil ? true : false
        self.heightAnchor.constraint(equalToConstant: height).isActive = height != 0 ? true : false
        self.widthAnchor.constraint(equalToConstant: width).isActive = width != 0 ? true : false
    }
    
}
