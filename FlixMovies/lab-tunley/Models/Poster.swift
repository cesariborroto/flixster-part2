//
//  Poster.swift
//  lab-tunley
//
//  Created by Alejandra Rivera on 2/12/23.
//

import Foundation

struct AlbumSearchResponse: Decodable {
    let results: [Movie]
}

struct Album: Decodable {
    let artworkUrl100: URL
}
