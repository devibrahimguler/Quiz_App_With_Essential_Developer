//
//  TableViewHelpers.swift
//  QuizAppTests
//
//  Created by İbrahim Güler on 23.09.2021.
//

import UIKit

extension UITableView {
    
    func cell(at row: Int) -> UITableViewCell? {
        return dataSource?.tableView(self, cellForRowAt: IndexPath(row: row, section: 0))
    }
    
    func title(at row: Int) -> String? {
        return cell(at: row)?.textLabel?.text
    }
    
    func select(row: Int) {
        let indexPath = IndexPath(row: row, section: 0)
        selectRow(at: indexPath, animated: false, scrollPosition: .none)
        delegate?.tableView?(self, didSelectRowAt: indexPath)
    }
    
    func deselect(row: Int) {
        let indexpath = IndexPath(row: row, section: 0)
        deselectRow(at: indexpath, animated: false)
        delegate?.tableView?(self, didDeselectRowAt: indexpath)
    }
}
