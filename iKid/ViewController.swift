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
    let goodJokesQA = [
        "My wife left me because I'm too insecure.": "No wait, she's back.\nShe just went to make a cup of tea.",
        "'Forget everything you learned in college. You won't need it working here.'":"'But I never went to college.'\n'Well then, I'm sorry. You are underqualified to work here.'",
        "Obama smoked weed growing up, and now look where he is today":"Unemployed with two kids and recently evicted",
        "Steve jobs would have been a better president than Donald Trump.":"But its a silly comparison really, its like comparing apples to oranges.",
        "The son went to his dad and asked him, \"Dad, what's an alcoholic?\"":"So the dad replied, \"Do you see those four trees? Well, an alcoholic would see eight.\"\nThe son replied, \"But Dad, I only see two.\"",
    ]
    let antiJokesQA = [
        "Did you hear about the Doctor on the United Flight?":"[removed]",
        "Breaking News: Bill Gates has agreed to pay for Trump's wall":"On the condition he gets to install windows.",
        "What has five fingers but isn't your hand?":"My hand.",
        "Humans eat more bananas than monkeys!":"In 2015 we ate over 74 million bananas and only 6 monkeys.",
        "Why can't Helen Keller drive?":"Because she's dead",
    ]
    let animalJokesQA = [
        "What do you call a sleeping bull?":"A bull-dozer.",
        "What did the farmer call the cow that had no milk?":"An udder failure.",
        "Why do gorillas have big nostrils? ":"Because they have big fingers!",
        "Why are teddy bears never hungry?":"They are always stuffed!",
        "What fish only swims at night?":"A starfish!",
    ]
    let dadJokesQA = [
        "Son: \"Mom, Dad, I\'m gay.\"":"Mom: Stares at Dad\nDad: Clenches fist\nMom: \"Don't!\"\nDad: Sweats Profusely\nMom: \"...\"\nDad: \"HI GAY, I'M DAD\"",
        "Did you hear about the restaurant on the moon?":"Great food, no atmosphere.",
        "How many apples grow on a tree?":"All of them.",
        "What do you call a man with a rubber toe?":"Roberto.",
        "Why do you never see elephants hiding in trees?":"Because they're so good at it.",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func randomKey(_ dict: [String:String]) -> String {
        let index = Int(arc4random_uniform(UInt32(dict.count)))
        let key = Array(dict.keys)[index]
        return key
    }
    

    @IBAction func goodJokes(_ sender: UIBarButtonItem) {
        let key = randomKey(goodJokesQA)
        let value = goodJokesQA[key]
        JokeViewController.updateLabel(key, value!)
        return
    }
    @IBAction func antiJokes(_ sender: UIBarButtonItem) {
        let key = randomKey(antiJokesQA)
        let value = antiJokesQA[key]
        JokeViewController.updateLabel(key, value!)
        return
    }
    @IBAction func animalJokes(_ sender: UIBarButtonItem) {
        let key = randomKey(animalJokesQA)
        let value = animalJokesQA[key]
        JokeViewController.updateLabel(key, value!)
        return
    }
    @IBAction func dadJokes(_ sender: UIBarButtonItem) {
        let key = randomKey(dadJokesQA)
        let value = dadJokesQA[key]
        JokeViewController.updateLabel(key, value!)
        return
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

