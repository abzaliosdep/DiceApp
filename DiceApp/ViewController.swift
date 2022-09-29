import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var throwButton: UIButton!
    
    let images = [
        UIImage(named: "dice-1"),
        UIImage(named: "dice-2"),
        UIImage(named: "dice-3"),
        UIImage(named: "dice-4"),
        UIImage(named: "dice-5"),
        UIImage(named: "dice-6"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        diceImageView1.image = UIImage(named: "dice-3")
        diceImageView2.image = UIImage(named: "dice-2")
        
        titleLabel.text = "Кости"
        throwButton.backgroundColor = UIColor.blue
        
    }

 
     
    @IBAction func throwButtonTapped(_ sender: Any) {
        diceImageView1.image = images[randomImageIndex()]
        diceImageView2.image = images[randomImageIndex()]
    }
    
    func randomImageIndex() -> Int {
        return Int.random(in: 0..<images.count)
    }
    
}

