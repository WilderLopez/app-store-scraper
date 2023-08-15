//
//  File.swift
//  
//
//  Created by Wilder López on 8/15/23.
//

import Foundation

public enum SortedBy : String {
    case recent = "mostRecent"
    case helpful = "mostHelpful"
    
    public var name: String {
        switch self {
        case .recent: return "Most recent"
        case .helpful: return "Most helpful"
        }
    }
}

