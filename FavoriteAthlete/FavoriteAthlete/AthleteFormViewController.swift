//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Derek Stengel on 3/6/24.
//

import UIKit

class AthleteFormViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var leagueTextField: UITextField!
    @IBOutlet weak var teamTextField: UITextField!
    
    var athlete: Athlete?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        guard let name = nameTextField.text,
              let age = ageTextField.text,
              let league = leagueTextField.text,
              let team = teamTextField.text else { return }

        athlete = Athlete(name: name, age: age, league: league, team: team)
        performSegue(withIdentifier: "unwind", sender: self)
    }
    
    
    func updateView() {
        guard let athlete else { return }
        nameTextField.text = athlete.name
        ageTextField.text = athlete.age
        leagueTextField.text = athlete.league
        teamTextField.text = athlete.team
        
        }
    
    
    init?(coder: NSCoder, athlete: Athlete?) {
        self.athlete = athlete
        super.init(coder: coder)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}



