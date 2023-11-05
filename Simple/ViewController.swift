//
//  ViewController.swift
//  Simple
//
//  Created by Trương Minh Lượng Jr on 01/11/2023.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var imageDam: UIImageView!
    @IBOutlet weak var imageHoa: UIImageView!
    @IBOutlet weak var imageKeo: UIImageView!
    @IBOutlet weak var labelKetQua: UILabel!
    @IBOutlet weak var labelLetsPlay: UILabel!
    
    @IBOutlet weak var layer1: UIImageView!
    @IBOutlet weak var layer2: UIImageView!
    @IBOutlet weak var labelBan: UILabel!
    @IBOutlet weak var labelMay: UILabel!
    
    var imageArray: [UIImage] = []
    var randomIndex = 0
    
    var chon = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageArray.append(UIImage(named: "dam")!)
        imageArray.append(UIImage(named: "hoa")!)
        imageArray.append(UIImage(named: "keo")!)
        
        an()
        
        let tapGesDam = UITapGestureRecognizer(target: self, action: #selector(dam))
        tapGesDam.delegate = self
        imageDam.addGestureRecognizer(tapGesDam)
        imageDam.isUserInteractionEnabled = true
        
        let tapGesHoa = UITapGestureRecognizer(target: self, action: #selector(hoa))
        tapGesHoa.delegate = self
        imageHoa.addGestureRecognizer(tapGesHoa)
        imageHoa.isUserInteractionEnabled = true
        
        let tapGesKeo = UITapGestureRecognizer(target: self, action: #selector(keo))
        tapGesKeo.delegate = self
        imageKeo.addGestureRecognizer(tapGesKeo)
        imageKeo.isUserInteractionEnabled = true
        
    }
    
    @objc func dam() {
        print("1")
        chon = 1
        hien()
        layer1.image = UIImage(named: "dam")
        random()
        labelLetsPlay.isHidden = true
    }
    
    @objc func hoa() {
        print("2")
        chon = 2
        hien()
        layer1.image = UIImage(named: "hoa")
        random()
        labelLetsPlay.isHidden = true
    }
    
    @objc func keo() {
        print("3")
        chon = 3
        hien()
        layer1.image = UIImage(named: "keo")
        random()
        labelLetsPlay.isHidden = true
    }
    
    func random() {
        if let randomImage = imageArray.randomElement() {
            layer2.image = randomImage
            randomIndex = Int.random(in: 0..<3)
            ketQua()
        }
    }
    
    func an() {
        labelKetQua.isHidden = true
        layer1.isHidden = true
        layer2.isHidden = true
        labelBan.isHidden = true
        labelMay.isHidden = true
    }
    
    func hien() {
        labelKetQua.isHidden = false
        layer1.isHidden = false
        layer2.isHidden = false
        labelBan.isHidden = false
        labelMay.isHidden = false
    }
    
    func ketQua(){
        switch chon {
        case 1:
            if layer2.image == UIImage(named: "keo") {
                labelKetQua.text = "Bạn thắng"
            }else if layer2.image == UIImage(named: "hoa") {
                labelKetQua.text = "Bạn thua"
            }else{
                labelKetQua.text = "Bạn hoà"
            }
        case 2:
            if layer2.image == UIImage(named: "keo") {
                labelKetQua.text = "Bạn thua"
            }else if layer2.image == UIImage(named: "hoa") {
                labelKetQua.text = "Bạn hoà"
            }else{
                labelKetQua.text = "Bạn thắng"
            }
        case 3:
            if layer2.image == UIImage(named: "keo") {
                labelKetQua.text = "Bạn hoà"
            }else if layer2.image == UIImage(named: "hoa") {
                labelKetQua.text = "Bạn thắng"
            }else{
                labelKetQua.text = "Bạn thua"
            }
        default:
            break
        }
    }
    
    
    


    
    
    
}

