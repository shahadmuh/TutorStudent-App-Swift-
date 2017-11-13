//
//  ThirdViewController.swift
//  Tutor O
//
//  Created by Shahad Abdullah on 9/20/17.
//  Copyright © 2017 Shahad Abdullah. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var textMajor: UITextField!
    @IBAction func secondBack(_ sender: Any) {
        
        self.performSegue(withIdentifier: "secondBack", sender: self)
    }
    
   
    
    
    var majorArr = ["Mathmatics", "Information Tecnology", "Law", "Medical", "Arabic", "English and Languages", "Bussiness"]
    
    let my_pickerView = UIPickerView()
    
    var current_arr : [String] = []
    var active_textField : UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textMajor.delegate = self
        
        my_pickerView.delegate = self
        my_pickerView.dataSource = self
        
        textMajor.inputView = my_pickerView
        
        create_toolbar()
        
    }
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        active_textField = textField
        
        current_arr = majorArr
        
        my_pickerView.reloadAllComponents()
        return true
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return current_arr.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return current_arr[row]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        print("Selected item is", current_arr[row])
        active_textField.text = current_arr[row]
    }
    
    func create_toolbar()
    {
        let toolbar = UIToolbar()
        toolbar.barStyle = .default
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneClick))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelClick))
        toolbar.setItems([doneButton ,spaceButton, cancelButton], animated: false)
        
       textMajor.inputAccessoryView = toolbar
        
    }
    
    func doneClick(){
        active_textField.resignFirstResponder()
    }
    
    func cancelClick (){
        active_textField.text = ""
        active_textField.resignFirstResponder()
        
    }

    
    
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

