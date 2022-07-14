//
//  ArticleEntity.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022.
//

import Foundation

// MARK: - ArticleEntity
struct ArticleEntity: Identifiable, Decodable {
    let id: Int
    let title: String
    let url: String
    let imageURL: String
    let newsSite, summary, publishedAt, updatedAt: String
    let featured: Bool
    let launches: [Launch]
    let events: [Event]

    enum CodingKeys: String, CodingKey {
        case id, title, url
        case imageURL = "imageUrl"
        case newsSite, summary, publishedAt, updatedAt, featured, launches, events
    }
}

// MARK: - Event
struct Event: Decodable {
    let id: Int
    let provider: String
}

// MARK: - Launch
struct Launch: Decodable {
    let id, provider: String
}

typealias Articles = [ArticleEntity]
