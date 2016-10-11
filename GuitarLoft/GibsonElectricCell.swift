import UIKit



class GibsonElectricCell: UICollectionViewCell {
    
    var imageView: UIImageView!
    var labelView: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
    }
    
    func layout() {
        contentView.backgroundColor = UIColor.whiteColor()
        
        imageView = UIImageView()
        contentView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.leftAnchor.constraintEqualToAnchor(contentView.leftAnchor, constant: 10.0).active = true
        imageView.topAnchor.constraintEqualToAnchor(contentView.topAnchor, constant: 20.0).active = true
        imageView.rightAnchor.constraintEqualToAnchor(contentView.rightAnchor, constant: -10.0).active = true
        imageView.bottomAnchor.constraintEqualToAnchor(contentView.bottomAnchor, constant: -20.0).active = true
        
        labelView = UILabel()
        contentView.addSubview(labelView)
        
        
        
        labelView.translatesAutoresizingMaskIntoConstraints = false
        labelView.topAnchor.constraintEqualToAnchor(contentView.topAnchor, constant: 10.0).active = true
        labelView.rightAnchor.constraintEqualToAnchor(contentView.rightAnchor, constant: -20.0).active = true
    }
    
    func configureWithGibsonGuitar(guitar: GibsonElectric) {
        imageView.image = UIImage(named: guitar.image)
    }
    
    func configureGuitarBrand(brand: Brand) {
        labelView.text = brand.gibson
        labelView.textColor = UIColor.blackColor()
        labelView.font = UIFont(name: "AmericanTypewriter-Bold", size: 25.0)
        labelView.alpha = 0.5
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
