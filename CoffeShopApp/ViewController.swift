//
//  ViewController.swift
//  CoffeShopApp
//
//  Created by Bakar Kharabadze on 4/4/24.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties
    @IBOutlet private weak var mainStackView: UIStackView!
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var chocolateLabel: UILabel!
    @IBOutlet private weak var subtitleLabel: UILabel!
    @IBOutlet private weak var ratingStackView: UIStackView!
    @IBOutlet private weak var ratingLabel: UILabel!
    @IBOutlet private weak var ratingCounterLabel: UILabel!
    @IBOutlet private weak var viewLine: UIView!
    @IBOutlet private weak var descriptionTitleLabel: UILabel!
    @IBOutlet private weak var productDescriptionLabel: UILabel!
    @IBOutlet private weak var sizeLabel: UILabel!
    @IBOutlet private weak var smallSizeButton: UIButton!
    @IBOutlet private weak var mediumSizeButton: UIButton!
    @IBOutlet private weak var bigSizeButton: UIButton!
    @IBOutlet private weak var priceTitleLabel: UILabel!
    @IBOutlet private weak var priceLabel: UILabel!
    @IBOutlet private weak var buyButton: UIButton!
    
    private var selectedButton: UIButton?
    
    private let buttonColor = UIColor(hexString: "#C67C4E")
    private let priceLabelColor = UIColor(hexString: "#C67C4E")
    private let chocolateLabelColor = UIColor(hexString: "#9B9B9B")
    private let ratingLabelColor = UIColor(hexString: "#2F2D2C")
    private let ratingCounterLabelColor = UIColor(hexString: "#808080")
    private let descriptionTitleLabelColor = UIColor(hexString: "#2F2D2C")
    private let productDescriptionLabelColor = UIColor(hexString: "#9B9B9B")
    private let sizeLabelColor = UIColor(hexString: "#2F2D2C")
    private let methodButtonColor = UIColor(hexString: "#C67C4E")
    private let buttonBackgroundColor = UIColor(hexString: "#FFF5EE")
    private let cappuccino = Coffee(title: "Cappuccino", subtitle: "შოკოლადით", rating: "4.9", ratingCount: "(300)", description: "მოცემული კაპუჩინო არის დაახლოებით 150 მლ. ის შეიცავს 25 მლ. ესპრესოს ყავას, 85 მლ. ახალთახალი მოწველილი ძროხის რძეს, რომელიც სპეც... ", price: "₾ 4.50")
    
    //MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupMainStackViewsCustomSpacings()
        setupButton()
        setupLabels()
        setInfo()
    }
    
    //MARK: Private Methods
    @IBAction private func favoriteDidTap(_ sender: Any) {
        
    }
    
    @IBAction private func smallSizeDidTap(_ sender: UIButton) {
        setSelectedButton(sender)
    }
    
    @IBAction private func mediumSizeDidTap(_ sender: UIButton) {
        setSelectedButton(sender)
    }
    
    @IBAction private func bigSizeDidTap(_ sender: UIButton) {
        setSelectedButton(sender)
    }
    
    @IBAction private func buyDidTap(_ sender: Any) {
    }
    
    private func setInfo() {
        titleLabel.text = cappuccino.title
        subtitleLabel.text = cappuccino.subtitle
        ratingLabel.text = cappuccino.rating
        ratingCounterLabel.text = cappuccino.ratingCount
        descriptionTitleLabel.text = cappuccino.description
        priceLabel.text = cappuccino.price
        
        let attributedProductDescription = NSMutableAttributedString(string: cappuccino.description)
        let moreTextAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.brown]
        let moreTextAttributedString = NSAttributedString(string: "მეტი", attributes: moreTextAttributes)
        
        attributedProductDescription.append(moreTextAttributedString)
        productDescriptionLabel.attributedText = attributedProductDescription
    }
    
    private func setupMainStackViewsCustomSpacings() {
        mainStackView.setCustomSpacing(14, after: imageView)
        mainStackView.setCustomSpacing(8, after: subtitleLabel)
        mainStackView.setCustomSpacing(11, after: ratingStackView)
        mainStackView.setCustomSpacing(12, after: sizeLabel)
    }
    private func setupButton() {
        smallSizeButton.layer.borderColor = UIColor.gray.cgColor
        smallSizeButton.layer.borderWidth = 1.5
        smallSizeButton.layer.cornerRadius = 15
        smallSizeButton.layer.masksToBounds = true
        smallSizeButton.setTitleColor(.black, for: .normal)
        smallSizeButton.titleLabel?.font =  UIFont(name: "Sylfaen", size: 14)
        
        mediumSizeButton.layer.borderColor = UIColor.gray.cgColor
        mediumSizeButton.layer.borderWidth = 1.5
        mediumSizeButton.layer.cornerRadius = 15
        mediumSizeButton.layer.masksToBounds = true
        mediumSizeButton.setTitleColor(.black, for: .normal)
        mediumSizeButton.titleLabel?.font =  UIFont(name: "Sylfaen", size: 14)
        
        
        bigSizeButton.layer.borderColor = UIColor.gray.cgColor
        bigSizeButton.layer.borderWidth = 1.5
        bigSizeButton.layer.cornerRadius = 15
        bigSizeButton.layer.masksToBounds = true
        bigSizeButton.setTitleColor(.black, for: .normal)
        bigSizeButton.titleLabel?.font =  UIFont(name: "Sylfaen", size: 14)
    }
    
    private func setupLabels() {
        priceTitleLabel.font = UIFont(name: "Sylfaen", size: 14)
        
        priceLabel.font = UIFont(name: priceLabel.font.fontName, size: 20)
        priceLabel.textColor = priceLabelColor
        
        buyButton.layer.cornerRadius = 15
        buyButton.setTitleColor(.white, for: .normal)
        buyButton.backgroundColor = buttonColor
        
        chocolateLabel.textColor = chocolateLabelColor
        chocolateLabel.font = UIFont(name: chocolateLabel.font.fontName, size: 14)
        
        ratingLabel.textColor = ratingLabelColor
        ratingLabel.font = UIFont(name: ratingLabel.font.fontName, size: 18)
        
        ratingCounterLabel.textColor = ratingCounterLabelColor
        ratingCounterLabel.font = UIFont(name: ratingCounterLabel.font.fontName, size: 16)
        
        descriptionTitleLabel.textColor = descriptionTitleLabelColor
        descriptionTitleLabel.font = UIFont(name: descriptionTitleLabel.font.fontName, size: 18)
        
        productDescriptionLabel.textColor = productDescriptionLabelColor
        productDescriptionLabel.font = UIFont(name: productDescriptionLabel.font.fontName, size: 14)
        
        sizeLabel.textColor = sizeLabelColor
        sizeLabel.font = UIFont(name: sizeLabel.font.fontName, size: 18)
    }
    
    private func setSelectedButton(_ button: UIButton) {
        smallSizeButton.backgroundColor = .clear
        smallSizeButton.layer.borderColor = UIColor.black.cgColor
        
        mediumSizeButton.backgroundColor = .clear
        mediumSizeButton.layer.borderColor = UIColor.black.cgColor
        
        bigSizeButton.backgroundColor = .clear
        bigSizeButton.layer.borderColor = UIColor.black.cgColor
        
        button.backgroundColor = buttonBackgroundColor
        button.layer.borderColor = methodButtonColor.cgColor
    }
}

extension UIColor {
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}

struct Coffee {
    var title: String
    var subtitle: String
    var rating: String
    var ratingCount: String
    var description: String
    var price: String
}
