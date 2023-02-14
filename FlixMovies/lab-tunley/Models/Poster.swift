//
//  Poster.swift
//
//  Created by Cesar Borroto on 2/14/2023.
//

import Foundation
struct PosterSearchResponse: Decodable {
    let results: [Poster]
}

struct Poster: Decodable {
    let poster_path: URL
}
