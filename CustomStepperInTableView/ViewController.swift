import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var tableview: UITableView!
    
    var valueArray = [Int]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    @IBAction func valueChanged1(_ sender: GMStepper) {
        print(" sender.stepValue--->\( sender.value)")
        valueArray[sender.tag] = Int(sender.value)
    }
    
    
    
    @IBAction func doneButonAction(_ sender: UIBarButtonItem) {
        print(valueArray)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as!  CustomCell
        valueArray.append(1)
        
        cell.steppere.tag = indexPath.row
        cell.steppere.stepValue = 1.0
        return cell
    }
}
