//
//  RankingsListing.swift
//  Triathlon
//
//  Created by Duff Neubauer on 6/29/23.
//

import Foundation

public struct RankingsListing: Codable, Identifiable {
    
    public let id: Int
    public let name: String
    public let region: String?
    
    public enum CodingKeys: String, CodingKey {
        case id = "ranking_id"
        case name = "ranking_name"
        case region = "region_name"
    }
}

extension RankingsListing: Equatable {}
