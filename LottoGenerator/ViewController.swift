//
//  ViewController.swift
//  LottoGenerator
//
//  Created by Michael Lo iacono on 26.08.22.
//

import UIKit
import GameKit

class ViewController: UIViewController {
    
    let lottoKugel = [Int](1...49)
    
    var shuffledKugel = [Int]()
    
    
    @IBOutlet weak var sixstNummer: UILabel!
    @IBOutlet weak var fifthNummer: UILabel!
    @IBOutlet weak var fourtthNummer: UILabel!
    @IBOutlet weak var thirdNummer: UILabel!
    @IBOutlet weak var secondNummer: UILabel!
    @IBOutlet weak var firstNummer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func spielButton(_ sender: UIButton) {
        lottoGewinnZahlen()
    }
    
    func lottoGewinnZahlen(){
        shuffledKugel = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: lottoKugel) as! [Int]
        firstNummer.text = String(shuffledKugel[0])
        secondNummer.text = String(shuffledKugel[1])
        thirdNummer.text = String(shuffledKugel[2])
        fourtthNummer.text = String(shuffledKugel[3])
        fifthNummer.text = String(shuffledKugel[4])
        sixstNummer.text = String(shuffledKugel[5])
    }
}

