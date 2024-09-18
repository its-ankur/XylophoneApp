import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func CPressed(_ sender: UIButton) {
        // Safely unwrap currentTitle in case it's nil
        print(sender.currentTitle)
        if let soundTitle = sender.currentTitle {
            playsound(sou: soundTitle)
        }
    
    }
    
    func playsound(sou: String) {
        // Safely unwrap the URL for the sound file
        if let url = Bundle.main.url(forResource: sou, withExtension: "wav") {
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player?.play()
            } catch {
                print("Error playing sound: \(error.localizedDescription)")
            }
        } else {
            print("Sound file not found for: \(sou)")
        }
    }
}

