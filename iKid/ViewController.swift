//
//  ViewController.swift
//  iKid
//
//  Created by iGuest on 4/25/17.
//  Copyright © 2017 Austin Hutchinson. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var goodJoke: UIBarButtonItem!
    @IBOutlet weak var antiJoke: UIBarButtonItem!
    @IBOutlet weak var animalJoke: UIBarButtonItem!
    @IBOutlet weak var dadJoke: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goodJoke.target = self
        goodJoke.action = #selector(loadJoke(_:))
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadJoke(_ sender: UIBarButtonItem!) {
        var jokeAnswer: [String] = []
        if (sender == goodJoke) {
            jokeAnswer = setGoodJokeAnswer()
        } else if (sender == antiJoke) {
            jokeAnswer = setAntiJokeAnswer()
        } else if (sender == animalJoke) {
            jokeAnswer = setAnimalJokeAnswer()
        } else {
            jokeAnswer = setDadJokeAnswer()
        }
        print("this worked")
        JokeDictionaries.joke = jokeAnswer[0]
        JokeDictionaries.answer = jokeAnswer[1]
        performSegue(withIdentifier: "showJoke", sender: self)
        //self.jokeText.text = jokeAnswer[0]
        //self.answerText.text = jokeAnswer[1]
    }
    
    func setGoodJokeAnswer() -> [String] {
        let key = randomKey(JokeDictionaries.goodJokesQA)
        let value = JokeDictionaries.goodJokesQA[key]
        return [key, value!]
    }
    
    func setAntiJokeAnswer() -> [String] {
        let key = randomKey(JokeDictionaries.antiJokesQA)
        let value = JokeDictionaries.antiJokesQA[key]
        return [key, value!]
    }
    
    func setAnimalJokeAnswer() -> [String] {
        let key = randomKey(JokeDictionaries.animalJokesQA)
        let value = JokeDictionaries.animalJokesQA[key]
        return [key, value!]
    }
    
    func setDadJokeAnswer() -> [String] {
        let key = randomKey(JokeDictionaries.dadJokesQA)
        let value = JokeDictionaries.dadJokesQA[key]
        return [key, value!]
    }
    
    func randomKey(_ dict: [String:String]) -> String {
        let index = Int(arc4random_uniform(UInt32(dict.count)))
        let key = Array(dict.keys)[index]
        return key
    }

}

