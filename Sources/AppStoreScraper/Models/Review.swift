//
//  Review.swift
//  
//
//  Created by Wilder López on 8/15/23.
//

import Foundation

public struct Author: Codable {
    public let uri: Label
    public let name: Label
    public let label: String?
}

public struct Label: Codable {
    public let label: String
}

public struct Updated: Codable {
    public let label: String
}

public struct Content: Codable {
    public let label: String
    public let attributes: ContentType
}

public struct ContentType: Codable {
    public let type: String?
}

public struct Link: Codable {
    public let attributes: LinkAttributes
}

public struct LinkAttributes: Codable {
    public let rel: String
    public let href: String
}

public struct Entry: Codable {
    public let author: Author
    public let updated: Updated
    public let rating: Label
    public let version: Version
    public let id: ID
    public let title: Title
    public let content: Content
    public let link: Link
    public let voteSum: VoteSum
    public let contentType: ContentType
    public let voteCount: VoteCount
    
    public typealias Rating = Label
    public typealias Version = Label
    public typealias ID = Label
    public typealias Title = Label
    public typealias VoteSum = Label
    public typealias VoteCount = Label
    
    enum CodingKeys: String, CodingKey {
        case rating = "im:rating"
        case version = "im:version"
        case voteSum = "im:voteSum"
        case contentType = "im:contentType"
        case voteCount = "im:voteCount"
        case author , updated, id, title, content, link
    }
}

public struct Feed: Codable {
    public let author: Author
    public let entry: [Entry]
    public let updated: Label
    public let rights: Label
    public let title: Label
    public let icon: Label
    public let link: [Link]
    public let id: Label
}

public struct Review : Codable {
    public let feed: Feed
}


