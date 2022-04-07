//
//  ViewController.swift
//  10.Navigation
//
//  Created by 이병현 on 2022/04/07.
//

import UIKit

class ViewController: UIViewController, EditDelegate {

    
    @IBOutlet var txMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        if segue.identifier == "editButton" {
            editViewController.textWayValue = "segue : use button"
            // 버튼을 클릭한 경우
        } else if segue.identifier == "editBarButton" {
            editViewController.textWayValue = "segue : use Bar button"
            // 바 버튼을 클릭한 경우
        }
        editViewController.textMessage = txMessage.text!
        editViewController.delegate = self
    }
    
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        txMessage.text = message
    }


}

