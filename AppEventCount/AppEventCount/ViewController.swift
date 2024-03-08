//
//  ViewController.swift
//  AppEventCount
//
//  Created by Derek Stengel on 3/6/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var configForConnectingLabel: UILabel!
    @IBOutlet weak var willConnectToLabel: UILabel!
    
    @IBOutlet weak var sceneDidBecomeActiveLabel: UILabel!
    @IBOutlet weak var sceneWillResignActiveLabel: UILabel!
    @IBOutlet weak var sceneWillEnterForegroundLabel: UILabel!
    @IBOutlet weak var sceneDidEnterBackgroundLabel: UILabel!
    
    var didFinishLaunchingCount = 0
    var configForConnectingCount = 0
    var willConnectToCount = 0
    var didBecomeActive = 0
    var willResignActive = 0
    var didEnterBackground = 0
    var willEnterBackground = 0
    var willEnterForeground = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        // Do any additional setup after loading the view.
    }

    func updateView() {
        didFinishLaunchingLabel.text = "The app has launched \(appDelegate.launchCount) times."
        configForConnectingLabel.text = " The app has begun configuration  \(appDelegate.configurationForConnectingCount) times."
        willConnectToLabel.text = "The app will connect \(willConnectToCount) times."
        
        sceneDidBecomeActiveLabel.text = "The app has become active \(willConnectToCount) times."
        sceneWillResignActiveLabel.text = "The app has resigned active \(willResignActive) times."
        sceneDidEnterBackgroundLabel.text = "The app has gone into the background \(willEnterBackground) times."
        sceneWillEnterForegroundLabel.text = "The app has entered the foreground \(willEnterForeground) times."
    }

}

