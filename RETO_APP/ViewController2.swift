//
//  ViewController2.swift
//  RETO_APP
//
//  Created by José Armando Benvenuto Valerdi  on 15/11/22.
//

import UIKit

class ViewController2: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var busq: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.busq.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func menu(_ sender: Any) {
        dismiss(animated: true)
    }
    
     @IBAction func gesto(_ sender: Any) {
         dismiss(animated: true)
     }
    /*
     // MARK: - Navigation
     // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
    }
    */

}
