//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Евгений on 30.07.2024.
//

import UIKit

final class BioViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet private var bioText: UITextView!
    
    // MARK: - Public Properties
    var userDataBio: User!

    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradient()

        let name = userDataBio.person.name
        let nameInitial = firstLetter(of: name)
        
        title = "\(nameInitial). \(userDataBio.person.surname) Bio"
        bioText.text = userDataBio.person.bio
    }
    
    // MARK: - Private Methods
    private func firstLetter(of word: String) -> String {
        guard let firstChar = word.first else { return "" }
        return String(firstChar)
    }
}
