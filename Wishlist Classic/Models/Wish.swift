//
//  Wish.swift
//  Wishlist Classic
//
//  Created by Lupyana Mbembati on 30/01/2020.
//  Copyright © 2020 Lupyana Mbembati. All rights reserved.
//

import Foundation

struct Wish: Codable, Identifiable {
    let id = UUID()
    let item, wishDescription: String

    enum CodingKeys: String, CodingKey {
        case id, item
        case wishDescription = "description"
    }
}

var wishes: [Wish] = [
    .init(item: "One item", wishDescription: "This is a sample description, but it is optional")
]

