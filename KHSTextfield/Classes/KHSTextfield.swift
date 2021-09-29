
import Foundation

@available(iOS 13.0, *)
public class KHSTextfield: UITextField {
    
    private var rightButton: UIButton!
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpView()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    private func setUpView() {
        rightButton = UIButton()
        rightButton.contentMode = .scaleAspectFit
        let buttonImage = UIImage(systemName: "clear")
        rightButton.setImage(buttonImage, for: .normal)
        rightButton.addTarget(self, action: #selector(clearText), for: .touchUpInside)
        
        rightView = rightButton
        rightViewMode = .always
    }
    
    @objc private func clearText() {
        text?.removeAll()
    }
}
