//
//  RMRequest.swift
//  RickAndMortyApp
//
//  Created by Rafael Villarreal on 26/02/24.
//

import Foundation

final class RMRequest {
	private struct Constants {
		static let baseURl = "https://rickandmortyapi.com/api"
	}
	
	private let endpoint: RMEndpoint
	
	private let pathComponents: Set<String>?
	
	private let queryParameters: [URLQueryItem]
	
	private var urlString: String {
		var string = Constants.baseURl
		string += "/"
		string += endpoint.rawValue
		
		if let pathComponents = pathComponents, !pathComponents.isEmpty {
			string += "/"
			pathComponents.forEach({
				string += "/\($0)"
			})
		}
		
		if !queryParameters.isEmpty {
			string += "?"
			let argumentString = queryParameters.compactMap({
				guard let value = $0.value else { return nil }
				return "\($0.name)=\(value)"
			}).joined(separator: "&")
			
			string += argumentString
		}
		
		return string
	}
	
	public let httpMethod = "GET"
	
	public var url: URL? {
		return URL(string: urlString)
	}
	
	init(
		endpoint: RMEndpoint,
		pathComponents: Set<String> = [],
		queryParameters: [URLQueryItem] = []
	) {
		self.endpoint = endpoint
		self.pathComponents = pathComponents
		self.queryParameters = queryParameters
	}
}
