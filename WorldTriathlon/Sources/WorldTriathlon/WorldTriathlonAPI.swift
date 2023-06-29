//
//  TriathlonAPI.swift
//  Triathlon
//
//  Created by Duff Neubauer on 6/29/23.
//

import Foundation
import TriathlonKit

public class WorldTriathlonAPI: TriathlonService {
    
    private let session: URLSession
    
    public init() {
        self.session = URLSession(configuration: .default)
    }
    
    public func rankings() async throws -> [RankingsCategory] {
        try await decode([RankingsCategory].self, from: .rankingCategories)
    }
    
}

private extension WorldTriathlonAPI {
    
    func decode<T: Decodable>(_ type: T.Type, from endpoint: Endpoint) async throws -> T {
        let url = URL(string: "https://api.triathlon.org/v1\(endpoint.rawValue)")!
        var request = URLRequest(url: url)
        request.addValue("4e3a6a0e6627c989de3375828040c7c3", forHTTPHeaderField: "apikey")

        let (data, _) = try await session.data(for: request)
        
        return try JSONDecoder().decode(APIResponse<T>.self, from: data).data
    }
    
}

private extension WorldTriathlonAPI {
    
    enum Endpoint: String {
        case rankingCategories = "/rankings/categories"
    }
    
    struct APIResponse<T: Decodable>: Decodable {
        
        enum Status: String, Codable {
            case success
        }
        
        let code: Int
        let status: Status
        let data: T
        
    }

}
