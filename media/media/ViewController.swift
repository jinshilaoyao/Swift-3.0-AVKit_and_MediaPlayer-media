//
//  ViewController.swift
//  media
//
//  Created by yesway on 16/9/23.
//  Copyright © 2016年 joker. All rights reserved.
//

import UIKit
import AVKit
import MediaPlayer

class ViewController: UIViewController {
    
    fileprivate var playerVC: AVPlayerViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @objc private func moviePlayerPlaybackDidFinishNotification() {
        
    }

    @IBAction func moviePlayerControllerWithoutView(_ sender: UIButton) {
        
        let url = Bundle.main.url(forResource: "media1.mov", withExtension: nil)
        
        playerVC = AVPlayerViewController()
        playerVC?.player = AVPlayer(url: url!)
        
        present(playerVC!, animated: true, completion: nil)
    }

    @IBAction func moviePlayerControllerWithView(_ sender: UIButton) {
        
        let url = Bundle.main.url(forResource: "media1.mov", withExtension: nil)

        let player = AVPlayer(url: url!)
        
        let playerLayer = AVPlayerLayer(player: player)
        
        playerLayer.frame = CGRect(x: 10, y: 10, width: 300, height: 400)
        
        view.layer.addSublayer(playerLayer)
        
        player.play()


    }

}

