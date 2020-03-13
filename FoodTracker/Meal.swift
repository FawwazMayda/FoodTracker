//
//  Meal.swift
//  FoodTracker
//
//  Created by Muhammad Fawwaz Mayda on 13/03/20.
//  Copyright © 2020 Muhammad Fawwaz Mayda. All rights reserved.
//

import UIKit

class Meal {
    var name : String
    var image : UIImage?
    var rating : Int
    
    init?(name : String, photo : UIImage?, rating:Int) {
        if name.isEmpty || rating < 0 {
            return nil
        }
        self.name = name
        self.image = photo
        self.rating = rating
    }
}
