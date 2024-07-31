//
//  InfoViewController.swift
//  AboutMeApp
//
//  Created by Евгений on 30.07.2024.
//

import UIKit

final class InfoViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet private var personPhoto: UIImageView!
    
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var surnameLabel: UILabel!
    @IBOutlet private var ageLabel: UILabel!
    @IBOutlet private var companyLabel: UILabel!
    @IBOutlet private var professionLabel: UILabel!
    
    // MARK: - Public Properties
    var userDataInfo: User!
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradient()

        title = userDataInfo.person.fullName
                
        personPhoto.layer.cornerRadius = personPhoto.frame.width / 2
        personPhoto.image = UIImage(named: "photo")
        personPhoto.contentMode = .scaleAspectFill
        
        applyItalicToLabels()
}
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioVC = segue.destination as? BioViewController
        bioVC?.userDataBio = userDataInfo
    }
    
    // MARK: - Private Methods
    private func applyItalicToLabels() {
        let italicFont = UIFont.italicSystemFont(ofSize: 17)
        
        let nameText = "Имя: \(userDataInfo.person.name)"
        nameLabel.attributedText = makeItalicText(
            text: nameText,
            italicFont: italicFont
        )
        
        let surnameText = "Фамилия: \(userDataInfo.person.surname)"
        surnameLabel.attributedText = makeItalicText(
            text: surnameText,
            italicFont: italicFont
        )
        
        let ageText = "Возраст: \(userDataInfo.person.age)"
        ageLabel.attributedText = makeItalicText(
            text: ageText,
            italicFont: italicFont
        )
        
        let companyText = "Компания: \(userDataInfo.person.company.title)"
        companyLabel.attributedText = makeItalicText(
            text: companyText,
            italicFont: italicFont
        )
        
        let professionText = "Профессия: \(userDataInfo.person.company.profession)"
        professionLabel.attributedText = makeItalicText(
            text: professionText,
            italicFont: italicFont
        )
    }
    
    private func makeItalicText(text: String, italicFont: UIFont) -> NSAttributedString {
        let attributedString = NSMutableAttributedString(string: text)
        
        if let colonRange = text.range(of: ":") {
            let startIndex = text.index(after: colonRange.lowerBound)
            let range = NSRange(startIndex..., in: text)
            
            attributedString.addAttribute(.font, value: italicFont, range: range)
            }
            return attributedString
        }
}


