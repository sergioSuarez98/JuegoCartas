
import UIKit

class CardViewController: UIViewController {
    var rondas = 1
    
    @IBOutlet var myCard: UIView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
     
        buton2.layer.cornerRadius = 10
        buton1.layer.cornerRadius = 10
        myCard.layer.cornerRadius = 0
       
    }
   
    
    
    @IBOutlet weak var buton2: UIButton!
    @IBOutlet weak var buton1: UIButton!
    @IBOutlet weak var totalNum: UILabel!
    @IBOutlet weak var rounds: UILabel!
    
    func butonChange() {
        
        let num : Int = Int(buton1.title(for: .normal) ?? "") ?? 0
        
        print(num)
        if num<0{
            buton1.backgroundColor = UIColor.red
        } else if (num>0){
            
             buton1.backgroundColor = UIColor.green
        } else {
            buton1.backgroundColor = UIColor.blue
        }
      
    }
    
    /**
     
     */
    func butonChange2() {
        
        let num : Int = Int(buton2.title(for: .normal) ?? "") ?? 0
        		
        print(num)
        if num<0{
            buton2.backgroundColor = UIColor.red
        } else if (num>0){
            
             buton2.backgroundColor = UIColor.green
        } else {
            buton2.backgroundColor = UIColor.blue
        }

    }
    
    func calcular(num : Int){
        
        let numString = totalNum.text!
        var numInt = Int(numString)
        numInt = numInt! + num
        totalNum.text = String(numInt!)
    }
   
    @IBAction func numberSwap(_ sender: UIButton){
    
        
        let num : Int = Int(buton1.title(for: .normal) ?? "") ?? 0
        
        let range = -10 ..< 10
        let randomNumber = Int.random(in: range)
        
        let newNum : String = String(randomNumber)
        
        buton1.setTitle(newNum, for: .normal)
      
        calcular(num: num)
        butonChange()
        rounds.text = "Rondas: "+String(rondas)
        rondas += 1
    }
    
    @IBAction func numberSwap2(_ sender: Any) {

            let num : Int = Int(buton2.title(for: .normal) ?? "") ?? 0
           
            let range = -10 ..< 10
            let randomNumber = Int.random(in: range)
           
            let newNum : String = String(randomNumber)
          
           
            buton2.setTitle(newNum, for: .normal)
            calcular(num: num)
            butonChange2()
            rounds.text = "Rondas: "+String(rondas)
            rondas += 1
    }

}

