//
//  PageViewController.swift
//  AppPresentation
//
//  Created by Victoria Klimova on 31.08.2021.
//

import UIKit

class PageViewController: UIPageViewController {
    
    let presentScreenContent = [
        "Практика запоминания материала: первое повторение сразу после чтения",
        "Второе повторение - через 20 винут после первого, третье - через сутки",
        "Четвертое повторение - через 2+3 недели",
        "Пятое повторение - через 2-3 месяца"
    ]
    
    let emojiArray = ["🍐", "🍊", "🥝", "🥑"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let contentViewController = showViewControllerAtIndex(0) {
            setViewControllers([contentViewController], direction: .forward, animated: true, completion: nil)
            
        }

    }
    
    func showViewControllerAtIndex(_ index: Int) -> ContentViewController? {
        guard index >= 0 else { return nil }
        guard index < presentScreenContent.count else { return nil }
        guard let contentViewController = storyboard?.instantiateViewController(
                withIdentifier: "ContentViewController") as? ContentViewController else { return nil }
        
        contentViewController.presentText = presentScreenContent[index]
        contentViewController.emoji = emojiArray[index]
        contentViewController.currentPage = index
        contentViewController.numberOfPages = presentScreenContent.count
        
        return contentViewController
    }
    
}
