//
//  ViewController.swift
//  MenuCode2
//
//  Created by 송결 on 2021/11/10.
//

import UIKit





class ViewController: UIViewController {
    //let alert = UIAlertController(title: "내 지갑", message: "얼마를 갖고 싶니?", preferredStyle: UIAlertController.Style.alert)
    
    
    let myCash = UILabel()
    
    let mainLabel = UILabel()
    
    let walletButton = UIButton()
    
    let firstMenuLabel = UILabel()
    let secondMenuLabel = UILabel()
    let thirdMenuLabel = UILabel()
    
    let firstPriceLabel = UILabel()
    let secondPriceLabel = UILabel()
    let thirdPriceLabel = UILabel()
    
    let firstMenuQuantity = UILabel()
    let secondMenuQuantity = UILabel()
    let thirdMenuQuantity = UILabel()
    
    let firstMenuStepper = UIStepper.init()
    let secondMenuStepper = UIStepper.init()
    let thirdMenuStepper = UIStepper.init()
    
    let totalLabel = UILabel()
    
    
    let creditButton = UIButton()
    let resetButton = UIButton()
    
    var a = 0
    var b = 0
    var c = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let safeArea = view.safeAreaLayoutGuide
        
        
        
        
        
        
        
        
        
        view.addSubview(mainLabel)
        mainLabel.text = "메뉴를 선택하세요"
        mainLabel.textAlignment = .center
        mainLabel.textColor = UIColor.blue
        mainLabel.backgroundColor = UIColor.green
        mainLabel.font = .systemFont(ofSize: 20)
        //레이블은 프레임사이즈 안 먹어?
        //mainLabel.frame.size = CGSize.init(width: 10, height: 30)
        //mainLabel.layer.preferredFrameSize() 이건 뭐야?
        mainLabel.layer.cornerRadius = 1 //레이블 테두리 둥글게??안되는데???
        //수직 중앙에 맞추기
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //수평 중앙에 맞추기
        //mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        //leading,trailing처럼 아랍권에서는 반대로 읽기 때문에 방향이 다르다
        //left,right가 무조건 왼쪽,오른쪽 개념
        //메인 레이블을 왼쪽에서부터 제약을 둔다(왼쪽으로부터 100을 띄우겠다)
        mainLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        mainLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100).isActive = true
        //메인 레이블을 위쪽에서부터 제약을 둔다(상단 m자탈모부터 50 띄우겠다)
        mainLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
        view.addSubview(walletButton)
        walletButton.setTitle("내 지갑", for: .normal)
        walletButton.backgroundColor = UIColor.red
        //walletButton.setTitleColor(.brown, for: .focused) 너는 뭐야?
        //walletButton.setTitleShadowColor(.blue, for: .highlighted) 너도 뭔데?
        //프레임 사이즈 변경 어찌함?
        //walletButton.frame.size = CGSize.init(width: 200, height: 30)
        walletButton.layer.cornerRadius = 10
        //walletButton.addTarget(self, action: #selector(walletButton), for: .touchUpInside)
        walletButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50).isActive = true
        walletButton.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 50).isActive = true
        walletButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        view.addSubview(myCash)
        myCash.text = "0원"
        myCash.textColor = UIColor.white
        myCash.backgroundColor = UIColor.gray
        myCash.font = .systemFont(ofSize: 30)
        myCash.layer.cornerRadius = 10 //레이블 테두리 둥글게??안되는데???
        //수직 중앙에 맞추기
        myCash.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myCash.leftAnchor.constraint(equalTo: walletButton.leftAnchor, constant: 70).isActive = true
        myCash.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -70).isActive = true
        myCash.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 50).isActive = true
        myCash.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        view.addSubview(firstMenuLabel)
        firstMenuLabel.text = "짜장면"
        firstMenuLabel.textAlignment = .center
        firstMenuLabel.textColor = UIColor.black
        firstMenuLabel.backgroundColor = UIColor.gray
        firstMenuLabel.font = .systemFont(ofSize: 20)
        //firstMenuLabel.frame.size = CGSize.init(width: 100, height: 100) <<<- 오토레이아웃으로 잡아놔서 안 바뀜
        firstMenuLabel.layer.cornerRadius = 10 //레이블 테두리 둥글게??안되는데???
        //수직 중앙에 맞추기
        firstMenuLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //수평 중앙에 맞추기
        //mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        firstMenuLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        firstMenuLabel.rightAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        firstMenuLabel.topAnchor.constraint(equalTo: walletButton.safeAreaLayoutGuide.bottomAnchor, constant: 70).isActive = true
        firstMenuLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(secondMenuLabel)
        secondMenuLabel.text = "볶음밥"
        secondMenuLabel.textAlignment = .center
        secondMenuLabel.textColor = UIColor.black
        secondMenuLabel.backgroundColor = UIColor.gray
        secondMenuLabel.font = .systemFont(ofSize: 20)
        secondMenuLabel.layer.cornerRadius = 10 //레이블 테두리 둥글게??안되는데???
        //수직 중앙에 맞추기
        secondMenuLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        secondMenuLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        secondMenuLabel.rightAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        secondMenuLabel.topAnchor.constraint(equalTo: firstMenuLabel.safeAreaLayoutGuide.bottomAnchor, constant: 30).isActive = true
        secondMenuLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(thirdMenuLabel)
        thirdMenuLabel.text = "탕수육"
        thirdMenuLabel.textAlignment = .center
        thirdMenuLabel.textColor = UIColor.black
        thirdMenuLabel.backgroundColor = UIColor.gray
        thirdMenuLabel.font = .systemFont(ofSize: 20)
        thirdMenuLabel.layer.cornerRadius = 10 //레이블 테두리 둥글게??안되는데???
        //수직 중앙에 맞추기
        thirdMenuLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        thirdMenuLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        thirdMenuLabel.rightAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        thirdMenuLabel.topAnchor.constraint(equalTo: secondMenuLabel.safeAreaLayoutGuide.bottomAnchor, constant: 30).isActive = true
        thirdMenuLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
        view.addSubview(firstPriceLabel)
        firstPriceLabel.text = "6,000원"
        firstPriceLabel.textColor = UIColor.black
        firstPriceLabel.backgroundColor = UIColor.gray
        firstPriceLabel.font = .systemFont(ofSize: 20)
        firstPriceLabel.clipsToBounds = true // <<<- 레이블 테두리 안 바뀔때는 이거써서 바꿀게 선언하기
        //firstPriceLabel.layer.cornerRadius = 10
        //수직 중앙에 맞추기
        firstPriceLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        firstPriceLabel.leftAnchor.constraint(equalTo: firstMenuLabel.leftAnchor, constant: 100).isActive = true
        firstPriceLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -200).isActive = true
        firstPriceLabel.topAnchor.constraint(equalTo: walletButton.safeAreaLayoutGuide.bottomAnchor, constant: 70).isActive = true
        firstPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        view.addSubview(secondPriceLabel)
        secondPriceLabel.text = "7,000원"
        secondPriceLabel.textColor = UIColor.black
        secondPriceLabel.backgroundColor = UIColor.gray
        secondPriceLabel.font = .systemFont(ofSize: 20)
        //secondPriceLabel.layer.cornerRadius = 10
        //수직 중앙에 맞추기
        secondPriceLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        secondPriceLabel.leftAnchor.constraint(equalTo: secondMenuLabel.leftAnchor, constant: 100).isActive = true
        secondPriceLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -200).isActive = true
        secondPriceLabel.topAnchor.constraint(equalTo: firstPriceLabel.safeAreaLayoutGuide.bottomAnchor, constant: 30).isActive = true
        secondPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        view.addSubview(thirdPriceLabel)
        thirdPriceLabel.text = "9,000원"
        thirdPriceLabel.textColor = UIColor.black
        
        thirdPriceLabel.backgroundColor = UIColor.gray
        thirdPriceLabel.font = .systemFont(ofSize: 20)
        //thirdPriceLabel.layer.cornerRadius = 10
        //수직 중앙에 맞추기
        thirdPriceLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        thirdPriceLabel.leftAnchor.constraint(equalTo: thirdMenuLabel.leftAnchor, constant: 100).isActive = true
        thirdPriceLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -200).isActive = true
        thirdPriceLabel.topAnchor.constraint(equalTo: secondPriceLabel.safeAreaLayoutGuide.bottomAnchor, constant: 30).isActive = true
        thirdPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(firstMenuQuantity)
        firstMenuQuantity.text = "수량"
        firstMenuQuantity.textAlignment = .center
        firstMenuQuantity.textColor = UIColor.white
        firstMenuQuantity.backgroundColor = UIColor.black
        firstMenuQuantity.font = .systemFont(ofSize: 20)
        firstMenuQuantity.layer.cornerRadius = 10 //레이블 테두리 둥글게??안되는데???
        //수직 중앙에 맞추기
        // firstMenuQuantity.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        firstMenuQuantity.leftAnchor.constraint(equalTo: firstPriceLabel.rightAnchor, constant: 10
        ).isActive = true
        firstMenuQuantity.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100).isActive = true
        firstMenuQuantity.topAnchor.constraint(equalTo: walletButton.safeAreaLayoutGuide.bottomAnchor, constant: 70).isActive = true
        firstMenuQuantity.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(secondMenuQuantity)
        secondMenuQuantity.text = "수량"
        secondMenuQuantity.textAlignment = .center
        secondMenuQuantity.textColor = UIColor.white
        secondMenuQuantity.backgroundColor = UIColor.black
        secondMenuQuantity.font = .systemFont(ofSize: 20)
        secondMenuQuantity.layer.cornerRadius = 10 //레이블 테두리 둥글게??안되는데???
        //수직 중앙에 맞추기
        // firstMenuQuantity.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        secondMenuQuantity.leftAnchor.constraint(equalTo: secondPriceLabel.rightAnchor, constant: 10).isActive = true
        secondMenuQuantity.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100).isActive = true
        secondMenuQuantity.topAnchor.constraint(equalTo: firstMenuQuantity.bottomAnchor, constant: 30).isActive = true
        secondMenuQuantity.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        view.addSubview(thirdMenuQuantity)
        thirdMenuQuantity.text = "수량"
        thirdMenuQuantity.textAlignment = .center
        thirdMenuQuantity.textColor = UIColor.white
        thirdMenuQuantity.backgroundColor = UIColor.black
        thirdMenuQuantity.font = .systemFont(ofSize: 20)
        thirdMenuQuantity.layer.cornerRadius = 10 //레이블 테두리 둥글게??안되는데???
        //수직 중앙에 맞추기
        // firstMenuQuantity.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        thirdMenuQuantity.leftAnchor.constraint(equalTo: thirdPriceLabel.rightAnchor, constant: 10).isActive = true
        thirdMenuQuantity.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100).isActive = true
        thirdMenuQuantity.topAnchor.constraint(equalTo: secondMenuQuantity.bottomAnchor, constant: 30).isActive = true
        thirdMenuQuantity.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(firstMenuStepper)
        firstMenuStepper.tintColor = .red
        firstMenuStepper.backgroundColor = UIColor.gray
        firstMenuStepper.layer.cornerRadius = 10 //레이블 테두리 둥글게??안되는데???
        //수직 중앙에 맞추기
        // firstMenuQuantity.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        firstMenuStepper.leftAnchor.constraint(equalTo: firstMenuQuantity.rightAnchor, constant: 15).isActive = true
        firstMenuStepper.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -1).isActive = true
        //firstMenuStepper.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 70).isActive = true
        firstMenuStepper.topAnchor.constraint(equalTo: walletButton.safeAreaLayoutGuide.bottomAnchor, constant: 70).isActive = true
        firstMenuStepper.translatesAutoresizingMaskIntoConstraints = false
        //        stepper의 옵션 중
        //        wraps : 이게 True로 선언되면, 최대값이 될때 다시 최소값으로 바꾼다.
        //        autorepeat :  누르고 있으면 반복해서 눌러진다라는 옵션??
        //        maximumvalue : 최대값 설정
        firstMenuStepper.wraps = true
        firstMenuStepper.autorepeat = true
        firstMenuStepper.maximumValue = 10
        
        
        
        view.addSubview(secondMenuStepper)
        secondMenuStepper.tintColor = .red
        secondMenuStepper.backgroundColor = UIColor.gray
        secondMenuStepper.layer.cornerRadius = 10 //레이블 테두리 둥글게??안되는데???
        //        //stepper의 옵션 중
        //        wraps : 이게 True로 선언되면, 최대값이 될때 다시 최소값으로 바꾼다.
        //        autorepeat :  누르고 있으면 반복해서 눌러진다라는 옵션??
        //        maximumvalue : 최대값 설정
        secondMenuStepper.wraps = true
        secondMenuStepper.autorepeat = true
        secondMenuStepper.maximumValue = 11
        //수직 중앙에 맞추기
        // firstMenuQuantity.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        secondMenuStepper.leftAnchor.constraint(equalTo: secondMenuQuantity.rightAnchor, constant: 15).isActive = true
        secondMenuStepper.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -1).isActive = true
        //firstMenuStepper.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 70).isActive = true
        secondMenuStepper.topAnchor.constraint(equalTo: firstMenuStepper.safeAreaLayoutGuide.bottomAnchor, constant: 20).isActive = true
        secondMenuStepper.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(thirdMenuStepper)
        thirdMenuStepper.tintColor = .red
        thirdMenuStepper.backgroundColor = UIColor.gray
        thirdMenuStepper.layer.cornerRadius = 10 //레이블 테두리 둥글게??안되는데???
        
        //        //stepper의 옵션 중
        //        wraps : 이게 True로 선언되면, 최대값이 될때 다시 최소값으로 바꾼다.
        //        autorepeat :  누르고 있으면 반복해서 눌러진다라는 옵션??
        //        maximumvalue : 최대값 설정
        thirdMenuStepper.wraps = true
        thirdMenuStepper.autorepeat = true
        thirdMenuStepper.maximumValue = 11
        
        //수직 중앙에 맞추기
        // firstMenuQuantity.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        thirdMenuStepper.leftAnchor.constraint(equalTo: thirdMenuQuantity.rightAnchor, constant: 15).isActive = true
        thirdMenuStepper.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -1).isActive = true
        //firstMenuStepper.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 70).isActive = true
        thirdMenuStepper.topAnchor.constraint(equalTo: secondMenuStepper.safeAreaLayoutGuide.bottomAnchor, constant: 20).isActive = true
        thirdMenuStepper.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        view.addSubview(totalLabel)
        
        totalLabel.text = "합계: "
        //totalLabel.text = (self.totalLabel.text)!
        totalLabel.textAlignment = .center
        totalLabel.textColor = UIColor.white
        totalLabel.backgroundColor = UIColor.black
        totalLabel.font = .systemFont(ofSize: 40)
        totalLabel.layer.cornerRadius = 10 //레이블 테두리 둥글게??안되는데???
        //수직 중앙에 맞추기
        // firstMenuQuantity.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        totalLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        totalLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        totalLabel.topAnchor.constraint(equalTo: thirdMenuQuantity.bottomAnchor, constant: 30).isActive = true
        totalLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(creditButton)
        creditButton.setTitle("결제하기", for: .normal)
        creditButton.setTitleColor(UIColor.white, for: .normal)
        creditButton.backgroundColor = UIColor.black
        //walletButton.setTitleColor(.brown, for: .focused) 너는 뭐야?
        //walletButton.setTitleShadowColor(.blue, for: .highlighted) 너도 뭔데?
        //프레임 사이즈 변경 어찌함?
        //walletButton.frame.size = CGSize.init(width: 200, height: 30)
        creditButton.layer.cornerRadius = 20
        //walletButton.addTarget(self, action: #selector(walletButton), for: .touchUpInside)
        creditButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 60).isActive = true
        creditButton.topAnchor.constraint(equalTo: totalLabel.bottomAnchor, constant: 70).isActive = true
        creditButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -60).isActive = true
        creditButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(resetButton)
        resetButton.setTitle("다시 선택하기", for: .normal)
        resetButton.setTitleColor(UIColor.white, for: .normal)
        resetButton.backgroundColor = UIColor.gray
        resetButton.setTitleColor(.brown, for: .normal)
        resetButton.layer.cornerRadius = 10
        //walletButton.addTarget(self, action: #selector(walletButton), for: .touchUpInside)
        resetButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 60).isActive = true
        resetButton.topAnchor.constraint(equalTo: totalLabel.bottomAnchor, constant: 120).isActive = true
        resetButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -60).isActive = true
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
        
        
        
        walletButton.addTarget(self, action: #selector(walletBtnTapped(_:)), for: .touchUpInside)
        firstMenuStepper.addTarget(self, action: #selector(firstStepper(_:)), for: .touchUpInside)
        secondMenuStepper.addTarget(self, action: #selector(secondStepper(_:)), for: .touchUpInside)
        thirdMenuStepper.addTarget(self, action: #selector(thirdStepper(_:)), for: .touchUpInside)
        creditButton.addTarget(self, action: #selector(creditBtTapped(_:)), for: .touchUpInside)
        resetButton.addTarget(self, action: #selector(resetBtTapped), for: .touchUpInside)
        
        
        
        
        
        
        
    }
    //    🖋️ title은 사용자에게 보이는 버튼의 이름을 설정합니다.
    //
    //    🖋️ style은 버튼 타입을 결정합니다. 타입의 종류는 default, cancel, destructive 세 가지가 있습니다.
    //
    //    1 .cancel :아무것도 실행되지 않은 채 메시지 창의 액션이 취소된다는 것을 뜻하며, 메시지 창 내에서 한 번만 사용할 수 있습니다(두 개 이상 사용시 런타임 오류 발생).
    //    2 .destructive: 주의해서 선택해야 할 버튼에 사용합니다. 이 타입이 적용된 버튼은 빨간색으로 강조되며, 중요한 내용을 변경하거나 삭제해서 되돌릴 수 없는 결정을 하는 버튼에 적용됩니다.
    //    3 .default: 위 두 가지 스타일 이외에 일반적인 버튼에 사용됩니다.
    
    @objc func walletBtnTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "내 지갑", message: "얼마를 갖고 싶니?", preferredStyle: UIAlertController.Style.alert)
        
        alert.addTextField { (myTextField) in
            myTextField.placeholder = "마음껏 말해봐!!"
        }
        //tf.isSecureTextEntry = true
        //두 번째 코드인. isSecureTextEntry는 비밀번호 입력을 하면 필드에서 그 값을 ●●●로 처리하는 것입니다.
        
        let destructiveAction = UIAlertAction(title: "확인", style: UIAlertAction.Style.destructive) { [self] (textfield) in
            // 버튼 클릭시 실행되는 코드
            //...원 붙이는 법?!
            if let text = alert.textFields {
                if let textfield = text.first {
                    self.myCash.text = (textfield.text)! + "원"
                    self.myCash.textColor = UIColor.black
                }
            }
        }
        let cancelAction = UIAlertAction(title: "취소", style: UIAlertAction.Style.cancel, handler: nil)
        //메시지 창 컨트롤러에 버튼 액션을 추가
        //alert.addAction(defaultAction)
        //alert.addAction(destructiveAction)
        alert.addAction(cancelAction)
        alert.addAction(destructiveAction)
        //메시지 창 컨트롤러를 표시
        self.present(alert, animated: false)
        
        
    }
    
    
    @objc func firstStepper(_ sender: UIStepper) {
        
        firstMenuQuantity.text = Int(sender.value).description
        a = Int(sender.value) * 6000
        totalLabel.text = "\(a + b + c) 원"
        
        
    }
    
    @objc func secondStepper(_ sender: UIStepper) {
        secondMenuQuantity.text = Int(sender.value).description
        b = Int(sender.value) * 7000
        totalLabel.text = "\(a + b + c) 원"
        
        
    }
    
    @objc func thirdStepper(_ sender: UIStepper) {
        thirdMenuQuantity.text = Int(sender.value).description
        c = Int(sender.value) * 9000
        totalLabel.text = "\(a + b + c) 원"
    }
    
    
    
    
    
    
    
    @objc func creditBtTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "결제창입니다", message: "결제하시겠습니까?", preferredStyle: UIAlertController.Style.alert)
        
        //        alert.addTextField { (myTextField) in
        //                myTextField.placeholder = "마음껏 말해봐!!"
        //       }
        //tf.isSecureTextEntry = true
        //두 번째 코드인. isSecureTextEntry는 비밀번호 입력을 하면 필드에서 그 값을 ●●●로 처리하는 것입니다.
        
        let destructiveAction = UIAlertAction(title: "확인", style: UIAlertAction.Style.destructive)// { _ in
//            switch {
//            case
//            }
//        }
        let cancelAction = UIAlertAction(title: "취소", style: UIAlertAction.Style.cancel, handler: nil)
        //메시지 창 컨트롤러에 버튼 액션을 추가
        //alert.addAction(defaultAction)
        //alert.addAction(destructiveAction)
        
        alert.addAction(cancelAction)
        alert.addAction(destructiveAction)
        //메시지 창 컨트롤러를 표시
        self.present(alert, animated: false)
        
        
    }
    
    @objc func resetBtTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "다시 선택하기", message: "초기화합니다", preferredStyle: UIAlertController.Style.alert)
        
        
        let destructiveAction = UIAlertAction(title: "확인", style: UIAlertAction.Style.destructive) { _ in
            
            self.myCash.text = "0원"
            self.firstMenuQuantity.text = "0개"
            self.secondMenuQuantity.text = "0개"
            self.thirdMenuQuantity.text = "0개"
            self.totalLabel.text = "0원"
            
        }
        let cancelAction = UIAlertAction(title: "취소", style: UIAlertAction.Style.cancel, handler: nil)
        //메시지 창 컨트롤러에 버튼 액션을 추가
        //alert.addAction(defaultAction)
        //alert.addAction(destructiveAction)
        
        firstMenuStepper.value = 0
        secondMenuStepper.value = 0
        thirdMenuStepper.value = 0
        
        a = 0
        b = 0
        c = 0
        
        alert.addAction(cancelAction)
        alert.addAction(destructiveAction)
        //메시지 창 컨트롤러를 표시
        self.present(alert, animated: false)
    
    }
        
        
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    







}
