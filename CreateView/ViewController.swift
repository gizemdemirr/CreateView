//
//  ViewController.swift
//  CreateView
//
//  Created by Gizem on 10.06.2022.
//

import UIKit

class ViewController: UIViewController {
//diğer fonksiyonlarında ulaşabilmesi için burada tanımlanabilir
    var myLabel = UILabel()
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        //ekranın genişliğini ve yüksekliğini alma
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        // label oluşturmak
//                let myLabel = UILabel()
        //        ADINI BELİRLEMEK
                myLabel.text = "Test Label"
        //        YERİNİ BELİRLEMEK
                myLabel.textAlignment = .center
        //        çerçeve vermek ekranda nerde durduğunu ve boyutunu belirler
        myLabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y: height * 0.5 - 50/2, width: width * 0.8, height: 50)
        //        oluşturduğum görünümü maine yansıtma
                view.addSubview(myLabel)
        
//        BUTTON
        let myButton = UIButton()
        myButton.setTitle("My Button", for: UIControl.State.normal)
//        rengini belirleme
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
//        çerçeve
        myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.6, width: 200, height: 100)
        view.addSubview(myButton)
//        tıklanıldığında aksiyon işlemleri bu şekilde yapılır
//        targete self yazmamızın nedeni aksiyonun ve butonun viewcontroller içinde olacağını belirtmek içindir
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
//        touchUpInside = kullanıcı butona tıklayınca demek. Ne yapacağını fonksiyonda yazıp action yerinde çağırabilirsin
    }

    @objc func myAction() {
        myLabel.text = "tapped"
    }

}

