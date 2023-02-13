//
//  TrackCell.swift
//  lab-tunley
//
//  Created by Alejandra Rivera on 2/5/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {
    
    
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieDescLabel: UILabel!
    
    
    /// Configures the cell's UI for the given track.
    func configure(with movie: Movie) {
        movieNameLabel.text = movie.original_title
        movieDescLabel.text = movie.overview

        // Load image async via Nuke library image loading helper method
        //Nuke.loadImage(with: movie.poster_path, into: movieImageView)
        Nuke.loadImage(with: URL(string: "https://image.tmdb.org/t/p/original\(movie.poster_path)")!, into: movieImageView)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
