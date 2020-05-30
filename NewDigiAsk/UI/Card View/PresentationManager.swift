//
//  PresentationManager.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 25/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class PresentationManager: NSObject {
}
    //MARK: - UIViewControllerTransitionDelegate
    extension PresentationManager: UIViewControllerTransitioningDelegate{
        
        func presentationController(forPresented presented: UIViewController,
                                    presenting: UIViewController?,
                                    source: UIViewController) -> UIPresentationController? {
            let presentationController = PresentationController(presentedViewController: presented, presenting: presenting)
            return presentationController
        }
}
