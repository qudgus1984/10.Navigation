//
//  EditViewController.swift
//  10.Navigation
//
//  Created by 이병현 on 2022/04/07.
//

import UIKit

protocol EditDelegate {
    func didMessageEditDone(_ controller: EditViewController, message: String)
}

class EditViewController: UIViewController {
    
    var textWayValue: String = ""
    var textMessage: String = ""
    var delegate : EditDelegate?
    // 수정화면에서 직접 텍스트 필드의 텍스트를 제어할 수 없기 때문에 변수 textMessage를 문자열로 만듬

    @IBOutlet var lblWay: UILabel!
    @IBOutlet var txMessage: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblWay.text = textWayValue
        txMessage.text = textMessage
        // viewDidLoad 함수에서 변수 textMessage 값을 텍스트 필드의 텍스트로 대입하여 나타나게 함
    }
    
    @IBAction func btnDone(_ sender: UIButton) {
        if delegate != nil {
            delegate?.didMessageEditDone(self, message: txMessage.text!)
        }
        _ = navigationController?.popViewController(animated: true)
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
