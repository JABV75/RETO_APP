//
//  ViewController7.swift
//  RETO_APP
//
//  Created by Rene  on 28/11/22.
//

import UIKit






class ViewController7: UIViewController {

    @IBOutlet weak var PopUpButton: UIButton!
    
    @IBOutlet weak var PopUpButton2: UIButton!
    
    @IBOutlet weak var PopUpButton3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPopupButton()
        // Do any additional setup after loading the view.
    }
    
    
    func setPopupButton()
    {
        let optionClosure = {(action : UIAction) in
            print(action.title)}
        
        PopUpButton.menu = UIMenu(children : [
            UIAction(title : "Elige un Estado", state : .on, handler: optionClosure),
            UIAction(title : "Nuevo León", handler : optionClosure)])
        PopUpButton.showsMenuAsPrimaryAction = true
        PopUpButton.changesSelectionAsPrimaryAction = true
        
        
        PopUpButton2.menu = UIMenu(children : [
            UIAction(title : "Elige una Ciudad", state : .on, handler: optionClosure),
            UIAction(title : "Monterrey", handler : optionClosure)])
        PopUpButton2.showsMenuAsPrimaryAction = true
        PopUpButton2.changesSelectionAsPrimaryAction = true
        
        
        PopUpButton3.menu = UIMenu(children : [
            UIAction(title : "Elige una colonia", state : .on, handler: optionClosure),
            UIAction(title : "Roma", handler : optionClosure)])
        PopUpButton3.showsMenuAsPrimaryAction = true
        PopUpButton3.changesSelectionAsPrimaryAction = true
        
        
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
