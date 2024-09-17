//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func CPressed(_ sender: UIButton) {
        playsound(sou: "C")
    }
    
    @IBAction func DPressed(_ sender: UIButton) {
        playsound(sou: "D")
    }
    
    @IBAction func EPressed(_ sender: UIButton) {
        playsound(sou: "E")
    }
    
    @IBAction func FPressed(_ sender: UIButton) {
        playsound(sou: "F")
    }
    
    @IBAction func GPressed(_ sender: UIButton) {
        playsound(sou: "G")
    }
    
    @IBAction func APressed(_ sender: UIButton) {
        playsound(sou: "A")
    }
    
    @IBAction func BPressed(_ sender: UIButton) {
        playsound(sou: "B")
    }
    
    func playsound(sou:String){
        let url = Bundle.main.url(forResource: sou, withExtension: "wav")
        player=try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
    
}


