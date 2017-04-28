//
//  JokeViewController.swift
//  iKid
//
//  Created by iGuest on 4/25/17.
//  Copyright © 2017 Austin Hutchinson. All rights reserved.
//

import UIKit

class JokeViewController: UIViewController {

    @IBOutlet weak var jokeText: UILabel!
    @IBOutlet weak var answerText: UILabel!


    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        jokeText.text = JokeDictionaries.joke
        answerText.text = JokeDictionaries.answer
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    
    @IBAction func toggleAnswer(_ sender: UIButton) {
        answerText.isHidden = !answerText.isHidden
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
