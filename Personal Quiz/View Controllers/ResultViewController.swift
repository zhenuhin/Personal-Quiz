//
//  ResultViewController.swift
//  Personal Quiz
//
//  Created by Александр Женухин on 13.10.2021.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var headingResultLabel: UILabel!
    @IBOutlet var descriptionResultLabel: UILabel!
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
        
        updateResult()
    }
    
    private func updateResult() {
        var frequencyOfAnimals: [AnimalType: Int] = [:]
        // take array of animals from array of answers
        let animals = answers.map { $0.type }
        
        // filling dictionary
        for animal in animals {
            if let animalTypeCount = frequencyOfAnimals[animal] {
                frequencyOfAnimals.updateValue(animalTypeCount + 1, forKey: animal)
            } else {
                frequencyOfAnimals[animal] = 1
            }
        }
        
        // sort dictionary
        let sortedFrequencyOfAnimals = frequencyOfAnimals.sorted { $0.value > $1.value}
        guard let mostFrequencyAnimal = sortedFrequencyOfAnimals.first?.key else { return }
        updateUI(with: mostFrequencyAnimal)
    }
    
    private func updateUI(with animal: AnimalType) {
        headingResultLabel.text = "Вы - \(animal.rawValue)!"
        descriptionResultLabel.text = animal.definition
    }

}
