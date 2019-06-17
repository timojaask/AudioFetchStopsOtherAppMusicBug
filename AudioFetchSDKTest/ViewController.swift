import UIKit

class ViewController: UIViewController {
    @IBAction func getAudioManagerInstance_tapped(_ sender: UIButton) {
        print("\(AudioManager.shared)")
    }
}
