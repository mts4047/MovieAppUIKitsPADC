//
//  MovieViewController.swift
//  Starter
//
//  Created by Myo Thandar soe on 16/03/2023.
//

import UIKit

class MovieViewController: UIViewController, MovieItemDelegate {

    
    @IBOutlet weak var ivSearch: UIImageView!
    @IBOutlet weak var ivMenu: UIImageView!
    @IBOutlet weak var viewForToolbar: UIView!
    @IBOutlet weak var tableViewMovies: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerTabelViewCell()
        
    }
    
    private func registerTabelViewCell() {
        tableViewMovies.dataSource = self
        tableViewMovies.registerForCell(identifier: MovieSliderTableViewCell.identifier)
        tableViewMovies.registerForCell(identifier: PopularFilmTableViewCell.identifier)
        tableViewMovies.registerForCell(identifier: MovieShowTimeTableViewCell.identifier)
        tableViewMovies.registerForCell(identifier: GenreTableViewCell.identifier)
        tableViewMovies.registerForCell(identifier: ShowCaseTableViewCell.identifier)
        tableViewMovies.registerForCell(identifier: BestActorTableViewCell.identifier)
    }
    
    func onTapMovie() {
        navigateToMovieDetailViewController()
    }

}

extension MovieViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case MovieType.MOVIE_SLIDER.rawValue:
             let cell = tableView.dequeueCell(identifier: MovieSliderTableViewCell.identifier, indexPath: indexPath) as MovieSliderTableViewCell
            cell.delegate = self
            return cell
        case MovieType.MOVIE_POPULAR.rawValue:
            let cell = tableView.dequeueCell(identifier: PopularFilmTableViewCell.identifier, indexPath: indexPath) as PopularFilmTableViewCell
            cell.delegate = self
            return cell
        case MovieType.MOVIE_SHOWTIME.rawValue:
            return tableView.dequeueCell(identifier: MovieShowTimeTableViewCell.identifier, indexPath: indexPath)
        case MovieType.MOVIE_GENRE.rawValue:
            return tableView.dequeueCell(identifier: GenreTableViewCell.identifier, indexPath: indexPath)
        case MovieType.MOVIE_SHOWCASE.rawValue:
            return tableView.dequeueCell(identifier: ShowCaseTableViewCell.identifier, indexPath: indexPath)
        case MovieType.MOVIE_BEST_ACTOR.rawValue:
            return tableView.dequeueCell(identifier: BestActorTableViewCell.identifier, indexPath: indexPath)
        default:
            return UITableViewCell()
        }
        
    }
    
}

