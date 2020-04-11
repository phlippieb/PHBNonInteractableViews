//
//  NonInteractableViews.swift
//  PHBNonInteractableViews
//
//  Created by Phlippie Bosman on 2020/04/11.
//  Copyright © 2020 Phlippie Bosman. All rights reserved.
//

import UIKit

public class NonInteractableView: UIView {
    public override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let view = super.hitTest(point, with: event)
        return view == self ? nil : view
    }
}

public class NonInteractableStackView: UIStackView {
    public override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let view = super.hitTest(point, with: event)
        return view == self ? nil : view
    }
}

public class NonInteractableImageView: UIImageView {
    public override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let view = super.hitTest(point, with: event)
        return view == self ? nil : view
    }
}
