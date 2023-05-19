//
//  ActorCollectionViewCell.swift
//  Starter
//
//  Created by Myo Thandar soe on 05/05/2023.
//

import UIKit

class ActorCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var ivHeartFill: UIImageView!
    
    @IBOutlet weak var ivHeart: UIImageView!
    
    var delegate : ActorActionDelegate?=nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        initGestureRecognizers()
    }
    
    private func initGestureRecognizers(){
        let tapGestForFavorite = UITapGestureRecognizer(target: self, action: #selector(onTapFavourite))
        ivHeartFill.isUserInteractionEnabled = true
        ivHeartFill.addGestureRecognizer(tapGestForFavorite)
        
        let tapGestForUnFavorite = UITapGestureRecognizer(target: self, action: #selector(onTapUnFavorite))
        ivHeart.isUserInteractionEnabled = true
        ivHeart.addGestureRecognizer(tapGestForUnFavorite)
    }
    
    @objc func onTapFavourite() {
        ivHeartFill.isHidden = true
        ivHeart.isHidden = false
        delegate?.onTapFavorite(isFavorite: true)
    }
    
    @objc func onTapUnFavorite() {
        ivHeart.isHidden = true
        ivHeartFill.isHidden = false
        delegate?.onTapFavorite(isFavorite: false)
    }

}
