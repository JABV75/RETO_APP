//
//  ViewController6.swift
//  RETO_APP
//
//  Created by José Armando Benvenuto Valerdi  on 17/11/22.
//

import UIKit


class ViewController6: UIViewController, UITextViewDelegate{
    
    @IBOutlet weak var textview: UITextView!
    
    @IBOutlet weak var monPopupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textview.delegate = self
        setPopupButton()
    }
    override func touchesBegan(_ toches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }
    
    func setPopupButton()
    {
        let optionClosure = {(action : UIAction) in
            print(action.title)}
        
        monPopupButton.menu = UIMenu(children : [
            UIAction(title : "Elige una opción", state : .on, handler: optionClosure),
            UIAction(title : "Contaminación", handler : optionClosure),
            UIAction(title : "Calle cerrada", handler : optionClosure),
            UIAction(title : "Antialcohólica", handler : optionClosure),
            UIAction(title : "Protesta", handler : optionClosure),
            UIAction(title : "Accidente", handler : optionClosure)])
        monPopupButton.showsMenuAsPrimaryAction = true
        monPopupButton.changesSelectionAsPrimaryAction = true
    }
    
    // Do any additional setup after loading the view.
    
    @IBAction func gesto(_ sender: Any) {
        dismiss(animated: true)
    }
}
    
    

    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

