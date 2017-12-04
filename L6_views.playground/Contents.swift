//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    var buttonOne: UIButton!
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        
        let firstLabel = createLabel(text: "One")
        let secondLabel = createLabel(text: "Two")
        buttonOne = cofigureButton()
        view.addSubview(buttonOne)
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
        
        makeLayout()
        self.view = view
    }
    
    private func createLabel(text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.frame = CGRect(x: 150, y: 300, width: 200, height: 20)
        label.text = text
        label.textColor = .black
        return label
    }
    
    private func cofigureButton() -> UIButton {
        let button = UIButton()
        button.backgroundColor = .gray
        button.titleLabel?.text = "tap this"
        button.titleLabel?.textColor = .black
        button.titleLabel?.frame = button.bounds
        return button
    }
    
    private func makeLayout() {
        buttonOne.translatesAutoresizingMaskIntoConstraints = false
        buttonOne.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()


