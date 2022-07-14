//
//  ArticleMock.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022.
//

import Foundation

class ArticleMock {
    
    static func model() -> ArticleEntity{
        let launchs = [
            Launch(id: "",provider: "")
        ]
        
        let events = [
            Event(id: 0, provider: "")
        ]
        
        return ArticleEntity(
            id: 15759,
            title: "NASA, ESA, CSA release historic first images from the James Webb Space Telescope",
            url: "https://www.nasaspaceflight.com/2022/07/webb-first-images/",
            imageURL: "https://www.nasaspaceflight.com/wp-content/uploads/2022/07/main_image_star-forming_region_carina_nircam_final-5mb-1170x678.jpeg",
            newsSite: "NASA Spaceflight",
            summary: "NASA, the European Space Agency (ESA), and the Canadian Space Agency (CSA) have released the first set of full-color images taken by the James Webb Space Telescope — the world’s newest, most powerful, and largest space telescope. A total of five images were released, with the first image being unveiled by United States President Joe Biden and Vice President Kamala Harris at the White House the day before on July 11.",
            publishedAt: "2022-07-13T16:46:21.000Z",
            updatedAt: "2022-07-13T16:48:50.563Z",
            featured: true,
            launches: launchs,
            events: events
        )
    }
}
