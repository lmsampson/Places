//
//  PlacesTabBarController.swift
//  Places
//
//  Created by Lisa Sampson on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class PlacesTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        for childVC in childViewControllers {
            if let childVC = childVC as? PlacesPresenter {
                childVC.placeController = placeController
            }
        }
    }

    let placeController = PlaceController()
    
}
