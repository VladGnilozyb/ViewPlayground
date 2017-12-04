//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 300, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(cofigureButton())
        view.addSubview(label)
        self.view = view
    }
    
    private func cofigureButton() -> UIButton {
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 200, width: 200, height: 50)
        button.backgroundColor = .gray
        button.titleLabel?.text = "tap this"
        button.titleLabel?.textColor = .black
        button.titleLabel?.frame = button.bounds
        return button
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
