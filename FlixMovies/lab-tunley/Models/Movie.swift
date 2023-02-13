//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct
struct Movie: Decodable {
    let original_title: String
    let vote_average: Double
    let poster_path: URL
    let vote_count: Int
    let popularity: Double
    let overview: String
}

struct MoviesResponse: Decodable {
    let results: [Movie]
    //let resultCount: Int
    
}

// TODO: Pt 1 - Create an extension with a mock tracks static var
/*extension Movie {

    /// An array of mock tracks
    static var mockTracks: [Movie]  = [
        Movie(original_title: "Black Panther: Wakanda Forever",
              vote_average: "7.5",
              poster_path: URL(string:"https://image.tmdb.org/t/p/w500/sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!,
             vote_count: "2389",
             popularity: "7658",
              overview: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death. As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda."),
        
        Movie(original_title: "Puss in Boots: The Last Wish",
              vote_average: "8.6",
              poster_path: URL(string:"https://image.tmdb.org/t/p/w500/kuf6dutpsT0vSVehic3EZIqkOBt.jpg")!,
             vote_count: "3229",
             popularity: "5061",
              overview: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives."),
        
        Movie(original_title: "M3GAN",
              vote_average: "7.6",
              poster_path: URL(string:"https://image.tmdb.org/t/p/w500/d9nBoowhjiiYc4FBNtQkPY7c11H.jpg")!,
             vote_count: "1264",
             popularity: "3387",
              overview: "A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll's programming works too well, she becomes overprotective of her new friend with terrifying results."),
        
        Movie(original_title: "Shotgun Wedding",
              vote_average: "6.3",
              poster_path: URL(string:"https://image.tmdb.org/t/p/w500/t79ozwWnwekO0ADIzsFP1E5SkvR.jpg")!,
             vote_count: "221",
             popularity: "2351",
              overview: "Darcy and Tom gather their families for the ultimate destination wedding but when the entire party is taken hostage, “’Til Death Do Us Part” takes on a whole new meaning in this hilarious, adrenaline-fueled adventure as Darcy and Tom must save their loved ones—if they don’t kill each other first."),
        
        Movie(original_title: "Transfusion",
              vote_average: "6.6",
              poster_path: URL(string:"https://image.tmdb.org/t/p/w500/bxh5xCCW9Ynfg6EZJWUkc1zqTnr.jpg")!,
             vote_count: "30",
             popularity: "2087",
              overview: "Ryan Logan, a former Special Forces operative, is battling to cope with life after the loss of his wife. He is thrusted into the criminal underworld to keep his only son from being taken from him.")
        
        
    ]

    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}*/

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:

