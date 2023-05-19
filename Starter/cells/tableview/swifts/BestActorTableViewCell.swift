//
//  BestActorTableViewCell.swift
//  Starter
//
//  Created by Myo Thandar soe on 05/05/2023.
//

import UIKit

class BestActorTableViewCell: UITableViewCell, ActorActionDelegate {
    

    @IBOutlet weak var collectionViewActors: UICollectionView!
    @IBOutlet weak var lblMoreActors: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        lblMoreActors.underlineText(text: "MORE ACTORS")
        collectionViewActors.dataSource = self
        collectionViewActors.delegate = self
        
        collectionViewActors.register(UINib(nibName: String(describing: ActorCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: ActorCollectionViewCell.self))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func onTapFavorite(isFavorite: Bool) {
        debugPrint("isFavorite => \(isFavorite)")
    }
    
}

extension BestActorTableViewCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: ActorCollectionViewCell.self), for: indexPath) as? ActorCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.delegate = self
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.5, height: CGFloat(200))
    }
    
}
