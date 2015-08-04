//
//  Meal.swift
//  FoodTracker
//
//  Created by Michael Hoitomt on 8/3/15.
//  Copyright © 2015 Michael Hoitomt. All rights reserved.
//

import UIKit

class Meal {
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        self.name = name
        self.photo = photo
        self.rating = rating
        
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}
