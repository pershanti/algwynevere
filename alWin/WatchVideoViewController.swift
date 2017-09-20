//
//  WatchVideoViewController.swift
//  alWon
//
//  Created by Liseth Cardozo Sejas on 9/19/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class WatchVideoViewController: UIViewController {

    var dataArray = [[String: AnyObject]]()
    var videoSearch : String?
    
    @IBOutlet weak var videoView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getFeedVideos()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getFeedVideos() {
        
        
        let videoType = videoSearch!
        
        // store videoid , thumbnial , Title , Description
        
        let apiKey = "AIzaSyCNP-sFBJHWHkOKPhAyhItUuZulIOzP7OM"
        // create api key from google developer console for youtube
        
        var urlString = "https://www.googleapis.com/youtube/v3/search?part=snippet&q=\(videoType)&type=video&videoSyndicated=true&chart=mostPopular&maxResults=10&safeSearch=strict&order=relevance&order=viewCount&type=video&relevanceLanguage=en&regionCode=GB&key=\(apiKey)"
        
        urlString = urlString.addingPercentEncoding( withAllowedCharacters: .urlQueryAllowed)!
        let targetURL = URL(string: urlString)
        
        let config = URLSessionConfiguration.default // Session Configuration
        let session = URLSession(configuration: config)
        
        let task = session.dataTask(with: targetURL!) {
            
            data, response, error in
            
            if error != nil {
                
                print(error!.localizedDescription)
                
                let alert = UIAlertView(title: "alert", message: "No data.", delegate: nil, cancelButtonTitle: "OK")
                alert.show()
                return
            }
                
            else {
                
                do {
                    
                    typealias JSONObject = [String:AnyObject]
                    let  json = try JSONSerialization.jsonObject(with: data!, options: []) as! JSONObject
                    let items  = json["items"] as! Array<JSONObject>
                    
                    for i in 0 ..< 1 {
                        
                        let snippetDictionary = items[i]["snippet"] as! JSONObject
                        
                        // Initialize a new dictionary and store the data of interest.
                        var youVideoDict = JSONObject()
                        //                        youVideoDict["title"] = snippetDictionary["title"]
                        //                        youVideoDict["channelTitle"] = snippetDictionary["channelTitle"]
                        //                        youVideoDict["thumbnail"] = ((snippetDictionary["thumbnails"] as! JSONObject)["high"] as! JSONObject)["url"]
                        youVideoDict["videoID"] = (items[i]["id"] as! JSONObject)["videoId"]
                        self.dataArray.append(youVideoDict)
                        
                        let videoCode = self.dataArray[0]["videoID"]!
                        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
                        self.videoView.loadRequest(URLRequest(url: url!))
                    }
                    
                }
                catch {
                    print("json error: \(error)")
                }
            }
        }
        task.resume()
        
    }
    
    
    @IBAction func backbuttonWasPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
