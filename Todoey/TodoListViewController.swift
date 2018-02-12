//
//  ViewController.swift
//  Todoey
//
//  Created by 王菲 on 2018/2/12.
//  Copyright © 2018年 王菲. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Find Mike","Buy Eggos","Destory Demogorgon"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
    
    }
    //MARK - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    //MARK - tableView Delegate Methond
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row])
        
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        
        
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }
    
    
}



