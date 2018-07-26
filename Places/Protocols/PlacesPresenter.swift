//
//  PlacesPresenter.swift
//  Places
//
//  Created by Lisa Sampson on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import Foundation

// Protocol for types that display, manipulate, or create a PlaceController
protocol PlacesPresenter: class {
    var placeController: PlaceController? { get set }
}
