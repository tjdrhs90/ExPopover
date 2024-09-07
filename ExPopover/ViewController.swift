//
//  ViewController.swift
//  ExPopover
//
//  Created by 심성곤 on 9/7/24.
//

import UIKit

// 팝오버
class ViewController: UIViewController {
    
    let button = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.setTitle("Popover", for: .normal)
        
        let action = UIAction(handler: showPopover)
        button.addAction(action, for: .touchUpInside)
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    func showPopover(action: UIAction) {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .systemCyan
        
        viewController.preferredContentSize = .init(width: 200, height: 100)
        viewController.modalPresentationStyle = .popover
        
        let popoverPresentationController = viewController.popoverPresentationController
        popoverPresentationController?.permittedArrowDirections = [.down]
        popoverPresentationController?.sourceRect = button.bounds
        popoverPresentationController?.sourceView = button
        popoverPresentationController?.delegate = self // 필수
        present(viewController, animated: true)
    }
}

extension UIViewController: UIPopoverPresentationControllerDelegate {
    // Popover 스타일 표시하려면 필수
    public func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        .none
    }
}

#Preview {
    ViewController()
}
