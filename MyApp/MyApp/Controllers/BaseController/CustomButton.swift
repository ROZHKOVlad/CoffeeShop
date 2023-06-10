import UIKit

final class CustomButton: UIButton {
    
    private let label = UILabel()
    
    private let iconView = UIImageView()
    
    private var image = UIImage()
    
    init(image: UIImage) {
        self.image = image
        super.init(frame: CGRect())
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension CustomButton {
    
    func addViews() {
        addSubview(label)
        addSubview(iconView)
    }
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.rightAnchor.constraint(equalTo: rightAnchor, constant: -10),
            iconView.heightAnchor.constraint(equalToConstant: 10),
            iconView.widthAnchor.constraint(equalToConstant: 15),
            
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.rightAnchor.constraint(equalTo: iconView.leftAnchor),
            label.leftAnchor.constraint(equalTo: leftAnchor, constant:8)
        ])
    }
    
    func configure() {
        backgroundColor = Resources.Colors.additionalColor
        layer.cornerRadius = 15 
        
        label.translatesAutoresizingMaskIntoConstraints = false 
        label.textColor = Resources.Colors.active
        label.textAlignment = .center
        label.font = Resources.Fonts.helvelticaRegular(with: 15)
        
        iconView.translatesAutoresizingMaskIntoConstraints = false
        iconView.image = image.withRenderingMode(.alwaysTemplate)
        iconView.tintColor = Resources.Colors.active
    }
}
