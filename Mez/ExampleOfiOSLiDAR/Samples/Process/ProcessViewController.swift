

import UIKit

class ProcessViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        displayGifs()
        sleep(5)
        
        // Do any additional setup after loading the view.
    }
    
    func displayGifs() {
        
        var rotatingGif = UIImage.gifImageWithName("EmptyVid")
        imageView.image = rotatingGif
        sleep(5)
        rotatingGif = UIImage.gifImageWithName("Rotating")
        imageView.image = rotatingGif
        sleep(5)
        rotatingGif = UIImage.gifImageWithName("dots")
        imageView.image = rotatingGif
    }
    

    @IBAction func tappedExportButton(_ sender: UIButton) {
        performSegue(withIdentifier: "goToMeasureStoryboard", sender: self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
