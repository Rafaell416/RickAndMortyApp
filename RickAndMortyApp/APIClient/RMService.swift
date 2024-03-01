//
//  RMService.swift
//  RickAndMortyApp
//
//  Created by Rafael Villarreal on 26/02/24.
//

import Foundation

final class RMService {
	static let shared = RMService()
	
	private init() {}
	
	public func execute<T: Codable>(
		_ request: RMRequest,
		expecting type: T.Type,
		completion: @escaping (Result<T, Error>) -> Void
	) {
			
	}
}
