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

class ViewController: UIViewController,AVPlayerViewControllerDelegate {
    
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
    @IBAction func playerPlanTwo() {
        
        let url = Bundle.main.url(forResource: "media1.mov", withExtension: nil)

        playerVC = AVPlayerViewController()
        playerVC?.player = AVPlayer(url: url!)
        playerVC?.delegate = self
        
        playerVC?.player?.play()
        
        playerVC?.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height / 2)
        
        view.addSubview((playerVC?.view)!)
    }
}

extension ViewController {
    /*!
    	@method		playerViewControllerWillStartPictureInPicture:
    	@param		playerViewController
     The player view controller.
    	@abstract	Delegate can implement this method to be notified when Picture in Picture will start.
     */

    func playerViewControllerWillStartPictureInPicture(_ playerViewController: AVPlayerViewController) {
        
    }
    
    
    /*!
    	@method		playerViewControllerDidStartPictureInPicture:
    	@param		playerViewController
     The player view controller.
    	@abstract	Delegate can implement this method to be notified when Picture in Picture did start.
     */
    func playerViewControllerDidStartPictureInPicture(_ playerViewController: AVPlayerViewController) {
        
    }
    
    
    /*!
    	@method		playerViewController:failedToStartPictureInPictureWithError:
    	@param		playerViewController
     The player view controller.
    	@param		error
     An error describing why it failed.
    	@abstract	Delegate can implement this method to be notified when Picture in Picture failed to start.
     */
    
    func playerViewController(_ playerViewController: AVPlayerViewController, failedToStartPictureInPictureWithError error: Error) {
        
    }
    
    
    /*!
    	@method		playerViewControllerWillStopPictureInPicture:
    	@param		playerViewController
     The player view controller.
    	@abstract	Delegate can implement this method to be notified when Picture in Picture will stop.
     */
    
    func playerViewControllerWillStopPictureInPicture(_ playerViewController: AVPlayerViewController) {
        
    }
    
    
    /*!
    	@method		playerViewControllerDidStopPictureInPicture:
    	@param		playerViewController
     The player view controller.
    	@abstract	Delegate can implement this method to be notified when Picture in Picture did stop.
     */
    
    func playerViewControllerDidStopPictureInPicture(_ playerViewController: AVPlayerViewController) {
        
    }
    
    
    /*!
    	@method		playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart:
    	@param		playerViewController
     The player view controller.
    	@abstract	Delegate can implement this method and return NO to prevent player view controller from automatically being dismissed when Picture in Picture starts.
     */
    
    func playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart(_ playerViewController: AVPlayerViewController) -> Bool {
        return true
    }
    
    
    /*!
    	@method		playerViewController:restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:
    	@param		playerViewController
     The player view controller.
    	@param		completionHandler
     The completion handler the delegate needs to call after restore.
    	@abstract	Delegate can implement this method to restore the user interface before Picture in Picture stops.
     */
    
    func playerViewController(_ playerViewController: AVPlayerViewController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: @escaping (Bool) -> Swift.Void) {
        
    }
}

