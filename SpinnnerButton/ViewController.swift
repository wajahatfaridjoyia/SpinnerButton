//
//  ViewController.swift
//  SpinnnerButton
//
//  Created by mac on 29/7/2025.
//

import UIKit
import SSSpinnerButton

class ViewController: UIViewController {
    @IBOutlet weak var button:SSSpinnerButton!
    @IBOutlet weak var btn1:SSSpinnerButton!
    @IBOutlet weak var btn2:SSSpinnerButton!
    @IBOutlet weak var btn3:SSSpinnerButton!
    @IBOutlet weak var btn4:SSSpinnerButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func buttonTapped(_ sender:Any){
        button.startAnimate(spinnerType: SpinnerType.ballClipRotate, spinnercolor: UIColor.white, spinnerSize: 30, complete: {
                            })
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            self.button.stopAnimate(complete: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
            self.button.startAnimate(spinnerType: SpinnerType.ballRotateChase, spinnercolor: UIColor.white, complete: {})
            }
        })
    }
}
    @IBAction func buttonTapped1(_ sender:Any){
        btn1.startAnimate(spinnerType: SpinnerType.ballRotateChase, spinnercolor: UIColor.white, spinnerSize: 40, complete: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                self.btn1.stopAnimate(complete: {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        self.btn1.startAnimate(spinnerType: SpinnerType.ballClipRotate, spinnercolor: UIColor.white, complete: {})
                    }
                })
            }
        })
    }
    @IBAction func buttonTapped2(_ sender:Any){
        btn2.startAnimate(spinnerType:SpinnerType.circleStrokeSpin, spinnercolor: UIColor.white, spinnerSize: 50, complete: {})
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            self.btn2.stopAnimate(complete: {})
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                self.btn2.startAnimate(spinnerType: SpinnerType.ballSpinFade, spinnercolor: .white, complete: {})
            }
        }
    }
    @IBAction func buttontapped3(_ sender:Any){
        btn3.startAnimate(spinnerType: SpinnerType.circleScaleMultiple, spinnercolor: UIColor.white, spinnerSize: 40, complete: {})
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            self.btn3.stopAnimate(complete: {})
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                self.btn3.startAnimate(spinnerType: SpinnerType.circleScaleMultiple, spinnercolor: .white, complete: {})
            }
        }
    }
    @IBAction func buttonTapped4(_ sender:Any){
        btn4.startAnimate(spinnerType: SpinnerType.pacman, spinnercolor: UIColor.white, spinnerSize: 60, complete: {})
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            self.btn4.stopAnimate(complete: {})
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                self.btn4.startAnimate(spinnerType: SpinnerType.ballClipRotate, spinnercolor: .white, complete: {})
            }
        }
    }
}
