//
//  RMCharacterViewController.swift
//  RickAndMortyApp
//
//  Created by Rafael Villarreal on 24/02/24.
//

import UIKit

final class RMCharacterViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .systemBackground
		title = "Characters"
		
		let request = RMRequest(
			endpoint: .character,
			queryParameters: 	[
				URLQueryItem(name: "name", value: "rick"),
				URLQueryItem(name: "status", value: "alive")
			])
		print(request.url)
	}
}
