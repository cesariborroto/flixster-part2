//
//  DetailViewController.swift
//  Flixter App
//
//  Created by Cesar Borroto on 02/05/2023.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var voteAvg: UILabel!
    @IBOutlet weak var votes: UILabel!
    @IBOutlet weak var popularity: UILabel!
    @IBOutlet weak var movieDesc: UILabel!

    // A property to store the track object.
    // We can set this property by passing along the track object associated with the track the user tapped in the table view.
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the image located at the `artworkUrl100` URL and set it on the image view.
        Nuke.loadImage(with: URL(string: "https://image.tmdb.org/t/p/original\(movie.poster_path)")!, into: movieImageView)

        // Set labels with the associated track values.
        movieNameLabel.text = movie.original_title
        voteAvg.text = String(movie.vote_average)
        votes.text = String(movie.vote_count)
        popularity.text = String(movie.popularity)
        movieDesc.text = movie.overview

        
    }



}
