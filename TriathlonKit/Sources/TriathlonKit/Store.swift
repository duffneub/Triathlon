//
//  Store.swift
//  Triathlon
//
//  Created by Duff Neubauer on 6/29/23.
//

import Foundation

@MainActor
public class Store: ObservableObject {
    
    @Published public var selectedGender: Gender = .female
    @Published public var rankings: [RankingsCategory]?
    
    let service: TriathlonService
    
    public init(service: TriathlonService) {
        self.service = service
    }
    
    public func refreshAthleteRankings() async throws {
        rankings = try await service.rankings()
    }
    
}
