//
//  VisitedPlacesViewController.swift
//  Places
//
//  Created by Lisa Sampson on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class VisitedPlacesViewController: UIViewController, PlacesPresenter, PlacesTableViewControllerDelegate {

    func placeWasSelected(place: Place) {
        mapViewController.location = place.location
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let vc = segue.destination as? PlacesPresenter {
            vc.placeController = placeController
        }
        
        if let tableVC = segue.destination as? PlacesTableViewController {
            placesTableViewController = tableVC
            placesTableViewController.delegate = self
        }
        
        if let mapVC = segue.destination as? MapViewController {
            mapViewController = mapVC
        }
    }
    
    // MARK: Properties
    
    var placeController: PlaceController? {
        didSet {
            for childVC in childViewControllers {
                if let vc = childVC as? PlacesPresenter {
                    vc.placeController = placeController
                }
            }
        }
    }
    
    var mapViewController: MapViewController!
    var placesTableViewController: PlacesTableViewController!

}
