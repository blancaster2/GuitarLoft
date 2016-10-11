import UIKit


class SchecterViewController: UIViewController  {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundView = UIView()
        view.addSubview(backgroundView)
        
        backgroundView.backgroundColor = UIColor.whiteColor()
        
        
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.leftAnchor.constraintEqualToAnchor(view.leftAnchor).active = true
        backgroundView.topAnchor.constraintEqualToAnchor(view.topAnchor).active = true
        backgroundView.rightAnchor.constraintEqualToAnchor(view.rightAnchor).active = true
        backgroundView.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor).active = true
        
        
        
        let electricButton = UIButton()
        backgroundView.addSubview(electricButton)
        
        electricButton.backgroundColor = UIColor.yellowColor()
        electricButton.alpha = 0.5
        electricButton.setTitle("Electric", forState: .Normal)
        electricButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        electricButton.titleLabel!.font =  UIFont(name: "AmericanTypewriter-Bold", size: 40)
        electricButton.layer.cornerRadius = 5
        electricButton.layer.borderWidth = 1
        electricButton.layer.borderColor = UIColor.blackColor().CGColor
        
        
        
        
        electricButton.translatesAutoresizingMaskIntoConstraints = false
        electricButton.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        electricButton.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor).active = true
        electricButton.leftAnchor.constraintEqualToAnchor(view.leftAnchor, constant: 20.0).active = true
        electricButton.topAnchor.constraintEqualToAnchor(view.topAnchor, constant: 100.0).active = true
        electricButton.rightAnchor.constraintEqualToAnchor(view.rightAnchor, constant: -20.0).active = true
        electricButton.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor, constant: -400.0).active = true
        
        let acousticButton = UIButton()
        backgroundView.addSubview(acousticButton)
        
        acousticButton.backgroundColor = UIColor.yellowColor()
        acousticButton.alpha = 0.5
        acousticButton.setTitle("Acoustic", forState: .Normal)
        acousticButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        acousticButton.titleLabel!.font =  UIFont(name: "AmericanTypewriter-Bold", size: 40)
        acousticButton.layer.cornerRadius = 5
        acousticButton.layer.borderWidth = 1
        acousticButton.layer.borderColor = UIColor.blackColor().CGColor
        
        
        acousticButton.translatesAutoresizingMaskIntoConstraints = false
        acousticButton.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        acousticButton.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor).active = true
        acousticButton.leftAnchor.constraintEqualToAnchor(view.leftAnchor, constant: 20.0).active = true
        acousticButton.topAnchor.constraintEqualToAnchor(view.topAnchor, constant: 400.0).active = true
        acousticButton.rightAnchor.constraintEqualToAnchor(view.rightAnchor, constant: -20.0).active = true
        acousticButton.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor, constant: -100.0).active = true
        
        
        
    }

}