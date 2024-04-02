//
//  Extensions.swift
//  RickAndMortyApp
//
//  Created by Rafael Villarreal on 31/03/24.
//

import UIKit

extension UIView {
	func addSubViews(_ views: UIView...) {
		views.forEach({
			addSubview($0)
		})
	}
}
