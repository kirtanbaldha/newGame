//
//  ViewController2.swift
//  newGame
//
//  Created by R & W on 22/03/23.
import UIKit


class ViewController2: UIViewController {

    @IBOutlet weak var startButtonOutlet: UIButton!
    @IBOutlet weak var pg: UIProgressView!
    
    var time = Timer()
    
    
    	
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pg.progress = 0.0
//        startButtonOutlet.layer.cornerRadius = 15
        

        
//        startButtonOutlet.layer.cornerRadius = startButtonOutlet.frame.width / 4
//        startButtonOutlet.layer.masksToBounds = true

        }
    
    @IBAction func startButtonAction(_ sender: Any){
        
        var a : Float = 0.0
                self.pg.progress = a
                time = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { (time) in
                    a += 0.05
                    self.pg.progress = a
                    if self.pg.progress == 1.0{
//                        print(self.pg.progress)
                        self.time.invalidate()
                        self.navigation()
                       
                    }
                })
}
    func navigation() {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "midPage") as! midPage
        navigationController?.pushViewController(navigation, animated: true)
    }
}
