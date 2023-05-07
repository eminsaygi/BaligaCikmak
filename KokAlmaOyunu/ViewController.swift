import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var box1: UILabel!
    @IBOutlet weak var box2: UILabel!
    @IBOutlet weak var box3: UILabel!
    @IBOutlet weak var box4: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    

    var randomNumber: Int = 0

    override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.

           // Random sayıları kutulara ekle
           let number1 = Int.random(in: 2...15)
           let number2 = Int.random(in: 2...15)
           let number3 = Int.random(in: 2...15)
           let number4 = Int.random(in: 2...15)

           box1.text = String(number1)
           box2.text = String(number2)
           box3.text = String(number3)
           box4.text = String(number4)
        
        // 3 kutuya karelerini ekle, 1 kutuya rastgele bir sayı ekle
        let randomNumberIndex = Int.random(in: 0...3)
        
        if randomNumberIndex == 0 {
                   randomNumber = Int.random(in: 1...10)
                   button1.setTitle(String(randomNumber), for: .normal)
                   button2.setTitle(String(number2 * number2), for: .normal)
                   button3.setTitle(String(number3 * number3), for: .normal)
                   button4.setTitle(String(number4 * number4), for: .normal)
               } else if randomNumberIndex == 1 {
                   randomNumber = Int.random(in: 1...10)
                   button1.setTitle(String(number1 * number1), for: .normal)
                   button2.setTitle(String(randomNumber), for: .normal)
                   button3.setTitle(String(number3 * number3), for: .normal)
                   button4.setTitle(String(number4 * number4), for: .normal)
               } else if randomNumberIndex == 2 {
                   randomNumber = Int.random(in: 1...10)
                   button1.setTitle(String(number1 * number1), for: .normal)
                   button2.setTitle(String(number2 * number2), for: .normal)
                   button3.setTitle(String(randomNumber), for: .normal)
                   button4.setTitle(String(number4 * number4), for: .normal)
               } else {
                   randomNumber = Int.random(in: 1...10)
                   button1.setTitle(String(number1 * number1), for: .normal)
                   button2.setTitle(String(number2 * number2), for: .normal)
                   button3.setTitle(String(number3 * number3), for: .normal)
                   button4.setTitle(String(randomNumber), for: .normal)
               }
           }

    @IBAction func buttonPressed(_ sender: UIButton) {
          if sender.currentTitle == String(randomNumber) {
              let alert = UIAlertController(title: "Tebrikler!", message: "Doğru cevap.", preferredStyle: .alert)
              alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
              self.present(alert, animated: true, completion: nil)
          } else {
              let alert = UIAlertController(title: "Yanlış cevap!", message: "Tekrar dene.", preferredStyle: .alert)
              alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
              self.present(alert, animated: true, completion: nil)
          }
      }
  }

