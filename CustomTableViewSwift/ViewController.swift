//
//  ViewController.swift
//  CustomTableViewSwift
//
//  Created by Deniz Ata Eş on 30.12.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var table: UITableView!
    
    struct Sunset {
        let title: String
        let imageName: String
    }
    
    let data: [Sunset] = [
        Sunset(title: "resim 1", imageName: "sunset1"),
        Sunset(title: "resim 2", imageName: "sunset2"),
        Sunset(title: "resim 3", imageName: "sunset3"),
        Sunset(title: "resim 4", imageName: "sunset4")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = data[indexPath.row].title
        cell.iconImageView.image = UIImage(named: data[indexPath.row].imageName)
        
        return cell
    }
    
    
    
    
}

