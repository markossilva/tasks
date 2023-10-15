//
//  AddTaskViewModel.swift
//  Tasks
//
//  Created by Markos Rodrigo Sousa da Silva on 14/10/23.
//

import UIKit

public struct AddTaskViewModel: AddTaskPresentable {
    public var cornerRadius: CGFloat
    
    public var animationTransitionDuration: TimeInterval
    
    public var backgroundColor: UIColor
    
    public init() {
        self.cornerRadius = 20
        self.animationTransitionDuration = 0.3
        self.backgroundColor = UIColor.black.withAlphaComponent(0.5)
    }
    
    public init(cornerRadius: CGFloat,
                animationTransitionDuration: TimeInterval,
                backgroundColor: UIColor ) {
        self.cornerRadius = cornerRadius
        self.animationTransitionDuration = animationTransitionDuration
        self.backgroundColor = backgroundColor
    }
}
