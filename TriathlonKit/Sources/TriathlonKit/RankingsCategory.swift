//
//  RankingsCategory.swift
//  Triathlon
//
//  Created by Duff Neubauer on 6/29/23.
//

import Foundation

public struct RankingsCategory: Codable, Identifiable {
    
    public let id: Int
    public let name: String
    public let rankings: [RankingsListing]
    
    public enum CodingKeys: String, CodingKey {
        case id = "ranking_cat_id"
        case name
        case rankings
    }
    
}

extension RankingsCategory: Equatable {}

extension RankingsCategory: Comparable {
    
    public static func <(lhs: Self, rhs: Self) -> Bool {
        if lhs.name == "World Triathlon Series" || rhs.name == "World Triathlon Series" {
            return lhs.name == "World Triathlon Series"
        } else {
            return lhs.name < rhs.name
        }
    }
    
}
