//
//  TriathlonService.swift
//  Triathlon
//
//  Created by Duff Neubauer on 6/29/23.
//

import Foundation

public protocol TriathlonService {
    
    func rankings() async throws -> [RankingsCategory]
    
}
