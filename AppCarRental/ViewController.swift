    //
    //  ViewController.swift
    //  AppCarRental
    //
    //  Created by Nadia Mettioui on 22/06/2020.
    //  Copyright © 2020 Sirania'Dev. All rights reserved.
    //
    
    import UIKit
    
    
    class ViewController: UIViewController ,SwiftShareBubblesDelegate{
        var bubbles: SwiftShareBubbles?
        @IBOutlet weak var facebookButton: UIButton!
        override func viewDidLoad() {
            super.viewDidLoad()
            bubbles = SwiftShareBubbles(point: CGPoint(x: view.frame.width / 2, y: view.frame.height / 2), radius: 100, in: view)
                   bubbles?.showBubbleTypes = [Bubble.twitter, Bubble.line, Bubble.safari]
                   bubbles?.delegate = self
            // Do any additional setup after loading the view.
        }
        
        @IBAction func webSiteTapped(_ sender: Any) {
           
                if let url = NSURL(string: "http://abcars.ma/main/") {
                    UIApplication.shared.open(url as URL, options:[:], completionHandler:nil)
                }
            }
        
        
        @IBAction func facebookTapped(_ sender: Any) {
            
            
            let appURL = URL(string: "https://www.facebook.com/travelcars")! //https://www.facebook.com/travelcars
            let application = UIApplication.shared
            
            if application.canOpenURL(appURL)
            {
                application.open(appURL)
            }
            else
            {
                let webURL = URL(string: "https://www.facebook.com/travelcars")!
                application.open(webURL)
            }
        }
        
        
        // SwiftShareBubblesDelegate
           func bubblesTapped(bubbles: SwiftShareBubbles, bubbleId: Int) {
               if let bubble = Bubble(rawValue: bubbleId) {
                   print("\(bubble)")
                   switch bubble {
                   case .facebook:
                       break
//                   case .twitter:
//                       if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeTwitter) {
//                           guard let composer = SLComposeViewController(forServiceType: SLServiceTypeTwitter) else { return }
//                           composer.setInitialText("test test")
//                           present(composer, animated: true, completion: nil)
                   case .twitter: break
                    
                  
                   case .google: break
                   
                  
                   case .instagram: break
                   
                  
                   case .whatsapp: break
                   
                  
                   
                   case .line: break
                    
                   case .youtube:
                    break
                   case .pintereset:
                    break
                   case .linkedin:
                    break
                   case .weibo:
                    break
                   case .safari:
                    break
                }
                     
               } else {
                   // custom case
               }
           }

        
        @IBAction func buttonTapped(_ sender: Any) {
            bubbles?.show()
        }
    }
    
