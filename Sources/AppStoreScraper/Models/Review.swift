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
    public let type: String
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
    public let imRating: Label
    public let imVersion: Label
    public let id: Label
    public let title: Label
    public let content: Content
    public let link: Link
    public let imVoteSum: Label
    public let imContentType: ContentType
    public let imVoteCount: Label
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


