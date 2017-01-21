//
//  ImageView.swift
//  Laugh-A-Lot
//
//  Created by Nathaniel Ruiz on 2017-01-11.
//  Copyright © 2017 Rave. All rights reserved.
//

import UIKit

class jokePicClass: UIImageView
{
	
	weak var delegate: combinePicture?
	
	func setUpPicture(delgate: combinePicture, _ typeOfJoke: Int)
	{
		switch typeOfJoke
		{
		case 0: jokeURL = NSURL(string: Pictures.knockPic)
		case 1: jokeURL = NSURL(string: Pictures.antiPic)
		case 2: jokeURL = NSURL(string: Pictures.punPic)
		case 3: jokeURL = NSURL(string: Pictures.shortPic)
		default: break
		}
		image = delegate?.grabPicture(jokeURL)
	}

	var jokeURL: NSURL?
		{
		didSet
		{
			image = nil
		}
	}
	
	
	var jokePicView = UIImageView()
	
	override internal var image: UIImage?
		{
		get
		{
			return jokePicView.image
		}
		set
		{
			jokePicView.image = newValue
			//jokePicView.sizeToFit()
			let customframe = CGRect(x: 100.0, y: 470.0, width: 180.0, height: 180.0)
			self.jokePicView.frame = customframe
			//jokePicView.isHidden = true

		}
		
	}
	
}














