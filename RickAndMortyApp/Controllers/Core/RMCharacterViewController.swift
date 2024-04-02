//
//  RMCharacterViewController.swift
//  RickAndMortyApp
//
//  Created by Rafael Villarreal on 24/02/24.
//

import UIKit

final class RMCharacterViewController: UIViewController {
	
	private let characterListView = CharacterListView()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .systemBackground
		title = "Characters"
		view.addSubview(characterListView)
		NSLayoutConstraint.activate([
			characterListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
			characterListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
			characterListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
			characterListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor)
		])
	}
}
