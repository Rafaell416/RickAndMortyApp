//
//  RMGetAllCharactersResponse.swift
//  RickAndMortyApp
//
//  Created by Rafael Villarreal on 1/03/24.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
	struct Info: Codable {
		let count: Int
		let pages: Int
		let next: String?
		let prev: String?
	}
	
	let info: Info
	let results: [RMCharacter]
}
