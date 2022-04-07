//
//  ViewController.swift
//  10.Navigation
//
//  Created by 이병현 on 2022/04/07.
//

import UIKit

class ViewController: UIViewController, EditDelegate {

    let imgOn = UIImage(named: "lamp_on.png")
    let imgOff = UIImage(named: "lamp_off.png") // 각 변수에 이미지 파일명을 넣어준 것
    
    var isOn = true // 전구가 켜져있는지 나타내는 변수
    
    @IBOutlet var txMessage: UITextField!
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = imgOn // 스토리보드에 추가한 오브젝트인 이미지 뷰에 방금 선언한 imgOn을 대입
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

